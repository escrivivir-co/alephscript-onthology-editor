#!/bin/bash
# ═══════════════════════════════════════════════════════════════
# extract-and-clean.sh
# Extrae recursivamente PDF, ODS, ODT de zips_extracted y borra originales
# ═══════════════════════════════════════════════════════════════

set -e

BASE_DIR="${1:-DATA/zips_extracted}"
OUTPUT_DIR="${2:-DATA}"

# Colores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${YELLOW}═══════════════════════════════════════════════════════════════${NC}"
echo -e "${YELLOW}  FLOVE DATA EXTRACTOR                                          ${NC}"
echo -e "${YELLOW}═══════════════════════════════════════════════════════════════${NC}"
echo ""
echo "Base: $BASE_DIR"
echo "Output: $OUTPUT_DIR"
echo ""

# Verificar herramientas
check_tool() {
    if ! command -v "$1" &> /dev/null; then
        echo -e "${RED}✗ $1 no encontrado. Instalar con: brew install $2${NC}"
        exit 1
    fi
}

check_tool "pdftotext" "poppler"
check_tool "pandoc" "pandoc"

# Crear directorios de salida
mkdir -p "$OUTPUT_DIR/pdfs" "$OUTPUT_DIR/markdown" "$OUTPUT_DIR/ods_data"

# Contadores
PDF_COUNT=0
ODT_COUNT=0
ODS_COUNT=0
DELETED=0

# ═══════════════════════════════════════════════════════════════
# EXTRAER PDFs
# ═══════════════════════════════════════════════════════════════
echo -e "${GREEN}▶ Extrayendo PDFs...${NC}"
while IFS= read -r -d '' file; do
    name=$(basename "$file" .pdf)
    # Sanitizar nombre (espacios → guiones bajos)
    safe_name=$(echo "$name" | tr ' ' '_' | tr -cd '[:alnum:]._-')
    output="$OUTPUT_DIR/pdfs/${safe_name}.txt"
    
    if [ ! -f "$output" ]; then
        echo "  → $name"
        pdftotext -layout "$file" "$output" 2>/dev/null || echo "    ⚠ Error extrayendo $file"
        ((PDF_COUNT++)) || true
    else
        echo "  ✓ $name (ya existe)"
    fi
    
    # Borrar original
    rm -f "$file"
    ((DELETED++)) || true
done < <(find "$BASE_DIR" -name "*.pdf" -type f -print0)

# ═══════════════════════════════════════════════════════════════
# EXTRAER ODTs
# ═══════════════════════════════════════════════════════════════
echo ""
echo -e "${GREEN}▶ Extrayendo ODTs...${NC}"
while IFS= read -r -d '' file; do
    name=$(basename "$file" .odt)
    safe_name=$(echo "$name" | tr ' ' '_' | tr -cd '[:alnum:]._-')
    output="$OUTPUT_DIR/markdown/${safe_name}.md"
    
    if [ ! -f "$output" ]; then
        echo "  → $name"
        pandoc "$file" -o "$output" 2>/dev/null || echo "    ⚠ Error extrayendo $file"
        ((ODT_COUNT++)) || true
    else
        echo "  ✓ $name (ya existe)"
    fi
    
    # Borrar original
    rm -f "$file"
    ((DELETED++)) || true
done < <(find "$BASE_DIR" -name "*.odt" -type f -print0)

# ═══════════════════════════════════════════════════════════════
# EXTRAER ODS (spreadsheets → XML content)
# ═══════════════════════════════════════════════════════════════
echo ""
echo -e "${GREEN}▶ Extrayendo ODS...${NC}"
while IFS= read -r -d '' file; do
    name=$(basename "$file" .ods)
    safe_name=$(echo "$name" | tr ' ' '_' | tr -cd '[:alnum:]._-')
    output="$OUTPUT_DIR/ods_data/${safe_name}.txt"
    
    if [ ! -f "$output" ]; then
        echo "  → $name"
        # Extraer content.xml, quitar tags, limpiar espacios
        unzip -p "$file" content.xml 2>/dev/null | \
            sed 's/<[^>]*>//g' | \
            tr -s ' \n' | \
            head -c 100000 > "$output" || echo "    ⚠ Error extrayendo $file"
        ((ODS_COUNT++)) || true
    else
        echo "  ✓ $name (ya existe)"
    fi
    
    # Borrar original
    rm -f "$file"
    ((DELETED++)) || true
done < <(find "$BASE_DIR" -name "*.ods" -type f -print0)

# ═══════════════════════════════════════════════════════════════
# LIMPIAR CARPETAS VACÍAS
# ═══════════════════════════════════════════════════════════════
echo ""
echo -e "${GREEN}▶ Limpiando carpetas vacías...${NC}"
find "$BASE_DIR" -type d -empty -delete 2>/dev/null || true

# ═══════════════════════════════════════════════════════════════
# RESUMEN
# ═══════════════════════════════════════════════════════════════
echo ""
echo -e "${YELLOW}═══════════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}✓ COMPLETADO${NC}"
echo ""
echo "  PDFs extraídos:   $PDF_COUNT"
echo "  ODTs extraídos:   $ODT_COUNT"
echo "  ODS extraídos:    $ODS_COUNT"
echo "  Archivos borrados: $DELETED"
echo ""
echo "  Total líneas:"
wc -l "$OUTPUT_DIR/pdfs"/*.txt "$OUTPUT_DIR/markdown"/*.md 2>/dev/null | tail -1 || echo "  (sin archivos)"
echo ""
echo -e "${YELLOW}═══════════════════════════════════════════════════════════════${NC}"
