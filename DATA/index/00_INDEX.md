# Índice de Datos Extraídos — OnthologyEditor/DATA

> **Fecha de extracción**: 2026-01-09  
> **Última actualización**: 2026-01-09 (post-limpieza)  
> **Objetivo**: Recursos para implementar Fuzzy Logic en FloveEditor  
> **Épica**: SCRIPT-1.20.0  
> **Origin**: https://codeberg.org/FloveDocs/Main.git 

---

## Resumen de Recursos

| Categoría | Archivos | Tamaño | Relevancia Fuzzy |
|-----------|----------|--------|------------------|
| **PDFs extraídos** | 28 | 3.0 MB | 🔴 Alta |
| **Markdowns (ODT→MD)** | 52 | 3.3 MB | 🔴 Alta |
| **FloveApps (HTML/JS)** | 54 | 1.9 MB | 🔴 Alta |
| **Schemas YAML** | 7 | 72 KB | 🔴 Alta |
| **ODS data** | 4 | 116 KB | 🟡 Media |

### Estadísticas Globales
- **136,072 líneas** de texto total (73,998 PDFs + 62,074 Markdowns)
- **8.4 MB** de datos procesados (sin contar assets)
- **~95% cobertura** del contenido textual disponible
- **47 archivos fuente** limpiados (script `extract-and-clean.sh`)

---

## 1. PDFs Extraídos (`DATA/pdfs/`)

> **Total**: 28 archivos, 73,998 líneas, 3.0 MB

| Archivo | Líneas | Contenido | Uso para Fuzzy |
|---------|--------|-----------|----------------|
| **FloveSlides25.12.txt** | ~2500 | Presentación principal | Estructura 3 niveles |
| **FloveSlides25.10.2.txt** | ~6000 | Presentación detallada | Apps y demos |
| **FloveTables25.12.txt** | 515 | Tablas de ontología | **CLAVE**: Mapeo campos |
| **FloveTables25.10.txt** | ~1000 | Tablas extendidas | Relaciones jerárquicas |
| **Confluentisms25.10.txt** | 3387 | Paper académico | Base teórica |
| **Keys25.9.txt** | 42 | Claves/juegos | Referencia menor |
| **Papers0824/** | 9 PDFs | Papers fundacionales | 🔴 Teoría original |
| **+12 adicionales** | ~60K | Batch 2 extracción | Cobertura completa |

### Hallazgos Clave de FloveTables25.12.txt

La tabla define el mapeo completo **Campo → Teoría → Práctica → Demo**:

```
Field           Theory           Practice      Demo Key
─────────────   ──────────────   ───────────   ─────────
Metaphysics     Confluentism     Simplex       Rank
Teleology       Compatibilism    Wills         Rate
Theology        PanBitheism      Goddess       Explain
MathyLogic      Intuitionism     Cyclon        4
Science         2nD              D             8
Physics         Polons           Dipedia       Oxy 2
Chemistry       NucleoFunctors   ...           Foxy 3
Biology         GinoPrimarism    Daddy         3
...
Linguistics     Symbionimity     Fuzzy         concretions
Psicology       Love             Souls         Ancestring
Ethics          Joy              Trustful      Relations
Sociology       Wise             Liberada.net  Standards
Economy         Production       ...           ...
```

### Estructura TAO/YIN/YANG

```
Who: METAPHYSICS    TAO          YIN           YANG
─────────────────   ──────────   ────────────  ──────────
What for            Love         Atract        Expand
Where               Confluence   Inner         Outer
When                Compatibilism Destiny      Will
Why                 Intention    More Good     Less Bad
What                Form         Essence       Substance
How                 Process      Involve       Evolve
UNIT                Relation     0             1
```

---

## 2. Markdowns — Papers Confluentism (`DATA/markdown/`)

> **Total**: 52 archivos, 62,074 líneas, 3.3 MB

| Archivo | Líneas | Tema | Relevancia |
|---------|--------|------|------------|
| **01_Confluentism.md** | 648 | Base filosófica | 🔴 **ESENCIAL** |
| **02_Compatibilism.md** | ~350 | Libertad/Destino | 🟡 Media |
| **03_Ontologia.md** | ~900 | Estructura ontológica | 🔴 Alta |
| **04_Biologia.md** | ~420 | Aplicación biológica | 🟢 Baja |
| **05_Intuitionism.md** | ~1400 | Lógica intuicionista | 🟡 Media |
| **Papers25.4/** | 10 ODTs | Versiones extendidas | 🔴 Alta |
| **Poemarios/** | 9 ODTs | Contenido literario/metafórico | 🟡 Media |
| **+26 adicionales** | ~58K | Batch 2 extracción | Cobertura completa |

### Extracto Clave de 01_Confluentism.md

> "Confluentism as ideal metaphor of the more innerly fundamental metaphysical mechanism (a **dynamic bipolarity**) that **fractalizes** in every outer, from physics to sociology."

**Referencias históricas citadas**:
- Taoism (Laozi, Zhuangzi)
- Process Philosophy (Whitehead)
- Fuzzy Bipolar Yin Yang (Wen-Ran Zhang)
- Post-structuralism (Deleuze & Guattari)
- Systems Theory (Capra, Tim Ingold)

---

## 3. FloveApps — Demos Fuzzy Logic (`DATA/Demos/`)

> **Total**: 54 aplicaciones HTML/CSS/JS funcionales, 1.9 MB

### Estructura de Carpetas

```
Demos/
├── Fuzzy/                    ◄── NIVEL 1: FUZZY LOGIC
│   ├── Relate/               ◄── Operación RELATE
│   │   ├── Combos/
│   │   │   └── Advanced/
│   │   ├── Confluences/
│   │   ├── Polarities/
│   │   ├── Rate/
│   │   │   ├── Axis/
│   │   │   ├── Create/
│   │   │   ├── Intensonims/   ◄── Grados fuzzy (graduals7s.ods)
│   │   │   └── Ranks/
│   │   │       └── Analysis/
│   │   └── Triads/
│   ├── Explain/              ◄── Operación EXPLAIN
│   ├── View/                 ◄── Operación VIEW
│   └── Settings/
│
├── PsicoSocial/              ◄── NIVEL 2: PSICOSOCIAL
│   ├── Souls/
│   │   ├── 5Loves/
│   │   ├── Avatar/
│   │   ├── DieSafe/
│   │   └── OpenAstro/
│   ├── Trustful/
│   │   ├── Crumbler/
│   │   ├── GenderWars/
│   │   ├── HackBoth/
│   │   ├── Maty/
│   │   ├── MyFamily/
│   │   └── Sensy/
│   └── Freedom/              ◄── NIVEL 3: FREEDOM/ECONOMY
│       └── Economy/
│           ├── Craft/
│           ├── Ecology/
│           └── Offer/
│               ├── Deal/
│               ├── Freed/
│               ├── Help/
│               ├── Many/
│               └── Shareful/
│
├── Floves/                   ◄── Apps integradas
│   └── Triads/
├── Simplex/                  ◄── Visualización cosmos
└── Pages/                    ◄── Navegación web
```

### Demos Relevantes para Fuzzy Logic

| Demo | Ruta | Implementa |
|------|------|------------|
| **Relate/Combos** | `Fuzzy/Relate/Combos/` | Combinaciones de relaciones |
| **Relate/Rate/Intensonims** | `Fuzzy/Relate/Rate/Intensonims/` | **Grados fuzzy (0.0-1.0)** |
| **Relate/Confluences** | `Fuzzy/Relate/Confluences/` | Confluencias bipolares |
| **Relate/Triads** | `Fuzzy/Relate/Triads/` | Relaciones triádicas |
| **Explain** | `Fuzzy/Explain/` | Definiciones graduales |
| **View** | `Fuzzy/View/` | Visualización adaptativa |

---

## 4. Archivos ODS Relevantes

| Archivo | Ubicación | Contenido |
|---------|-----------|-----------|
| **graduals7s.ods** | `Demos/Fuzzy/Relate/Rate/Intensonims/` | **Escala de 7 grados** |
| **flovess.ods** | `Demos/Floves/` | Definiciones de Floves |
| **floviss.ods** | `Demos/Floves/` | Variante de Floves |
| **loves.ods** | `PsicoSocial/Souls/5Loves/` | 5 tipos de amor |

---

## 5. Mapeo Fuzzy Logic → Implementación

### Operación RELATE

**Fuentes**:
- `Demos/Fuzzy/Relate/index.html` (570 líneas)
- `graduals7s.ods` (escala de intensidad)

**Características extraídas**:
- Grafos visuales con nodos y conexiones
- Grados de relación (intensidad)
- Polaridades (Yin/Yang)
- Triadas de relación

### Operación EXPLAIN

**Fuentes**:
- `Demos/Fuzzy/Explain/index.html` (173 líneas)

**Características extraídas**:
- Perspectivas: Subjective, Objective, Mommentual, General
- Tonos: Normal, Funny, Formal, Trivial
- Campos: Metaphysics, Science, Biology, Psychology, Sociology
- Tiempo: Past, Present, Future, Short, Mid, Long

### Operación VIEW

**Fuentes**:
- `Demos/Fuzzy/View/index.html` (163 líneas)

**Características extraídas**:
- Vista central con concepto (ej: "LOVE")
- Pills de navegación: APPS, ACTS, MATCHES, SIMILAR, DIFFERENT, PRISMS
- Popovers con tags relacionados
- Wizard para profundización

---

## 6. Esquemas Extraídos

### `schemas/gradual-7-scale.yaml` ✅ COMPLETADO

Escala formal de 7 grados extraída de `graduals7s.ods`:

| Level | Value | Color | Chakra | Fuzzy Action |
|-------|-------|-------|--------|--------------|
| 1 | 0.14 | Red | Adrenal | Browse |
| 2 | 0.29 | Orange | Gonads | OnClick |
| 3 | 0.43 | Yellow | Pancreas | Rate |
| **4** | **0.57** | **Green** | **Thymus** | **Relate** |
| 5 | 0.71 | Blue | Tiroid | Rank |
| **6** | **0.86** | **Violet** | **Pituitary** | **Explain** |
| **7** | **1.0** | **White** | **Pineal** | **App** |

### `schemas/flove-ontology.schema.yaml` ✅ COMPLETADO

Ontología completa parseada de `FloveTables25.12.txt`:

| Layer | Contenido | Ejemplos |
|-------|-----------|----------|
| **Substances** | Jerarquía física 2^n | Particle → Ecosystem |
| **Fields** | Disciplinas académicas | Metaphysics → Economy |
| **Triads** | TAO-YIN-YANG por dominio | Love/Atract/Expand |
| **Apps** | Operaciones prácticas | RELATE, EXPLAIN, VIEW |

### `schemas/fuzzy-operations-examples.yaml` ✅ COMPLETADO

Ejemplos YAML de las 3 operaciones Fuzzy extraídos de demos HTML:

| Operación | Nivel | UI Components | Form Fields |
|-----------|-------|---------------|-------------|
| **RELATE** | 4 | Media bar, SVG mindmap, badges | Connections, intensities |
| **EXPLAIN** | 6 | Forms: Perspective, Focus, Formalise | Prism, Tone, WHY/WHAT/HOW |
| **VIEW** | 7 | Pills, popovers, modals | APPS, ACTS, SIMILAR, WIZARD |

### `schemas/confluentism-axioms.md` ✅ COMPLETADO

Axiomas filosóficos extraídos de `01_Confluentism.md`:

| Categoría | Axiomas |
|-----------|---------|
| **Fundamental** | Bipolaridad dinámica fractal, Medio confluente |
| **Epistemológico** | Integralidad vs Holismo, Anti-vanguardismo |
| **Semántico** | Suficiencia de "Confluence", Activación sujeto-objeto |
| **Biológico** | Dimorfismo como YIN-YANG, Síntesis Darwin-Lamarck |

---

## 7. Próximos Pasos de Procesamiento

| Paso | Prioridad | Estado | Descripción |
|------|-----------|--------|-------------|
| 1 | 🔴 Alta | ✅ | ~~Extraer `graduals7s.ods`~~ → `gradual-7-scale.yaml` |
| 2 | 🔴 Alta | ✅ | ~~Parsear `FloveTables25.12.txt`~~ → `flove-ontology.schema.yaml` |
| 3 | 🟡 Media | ✅ | ~~Convertir demos HTML~~ → `fuzzy-operations-examples.yaml` |
| 4 | 🟡 Media | ✅ | ~~Indexar `01_Confluentism.md`~~ → `confluentism-axioms.md` |
| 5 | 🔴 Alta | ✅ | ~~Papers0824 (9 PDFs)~~ → textos fundacionales |
| 6 | 🔴 Alta | ✅ | ~~Papers25.4 (10 ODTs)~~ → versiones extendidas |
| 7 | 🟡 Media | ✅ | ~~Poemarios (9 ODTs)~~ → contenido literario |
| 8 | 🟡 Media | ✅ | ~~4 ODS spreadsheets~~ → datos tabulares |
| 9 | 🟢 Baja | ✅ | ~~Limpieza fuentes~~ → `extract-and-clean.sh` ejecutado |

### Cobertura Final: ~95%

**Extraído**:
- 28 PDFs → texto plano (73,998 líneas)
- 52 ODTs → markdown (62,074 líneas)
- 4 ODS → datos XML
- 54 FloveApps → HTML/CSS/JS funcionales
- 7 schemas YAML

**Limpieza ejecutada**:
- Script: `scripts/extract-and-clean.sh`
- Archivos procesados: 47 (10 PDFs + 28 ODTs + 4 ODS + 5 otros)
- Archivos eliminados: 47
- Estado: ✅ Completado

---

## 8. Comandos Útiles

### Extraer más PDFs
```bash
pdftotext -layout "ruta/archivo.pdf" "DATA/pdfs/nombre.txt"
```

### Convertir ODT a Markdown
```bash
pandoc "ruta/archivo.odt" -o "DATA/markdown/nombre.md"
```

### Descomprimir ZIP
```bash
unzip -o "ruta/archivo.zip" -d "DATA/zips_extracted/nombre/"
```

### Limpiar fuentes extraídas (recursivo)
```bash
./scripts/extract-and-clean.sh
```

---

## 9. Schemas Generados (`DATA/schemas/`)

| Schema | Archivo | Contenido |
|--------|---------|-----------|
| **Escala 7 grados** | `gradual-7-scale.yaml` | 7 niveles fuzzy (0.14→1.0) |
| **Ontología Flove** | `flove-ontology.schema.yaml` | Substances→Fields→Triads→Apps |
| **Operaciones Fuzzy** | `fuzzy-operations-examples.yaml` | RELATE/EXPLAIN/VIEW UI specs |
| **Axiomas Confluentism** | `confluentism-axioms.md` | 9 categorías filosóficas |
| **Filosofía Fuzzy** | `fuzzy-philosophy.schema.yaml` | Paper "Why Fuzzy" |
| **Jerarquía Biosistemas** | `biosystems-hierarchy.schema.yaml` | Físico→biológico→psicosocial |
| **Índice Papers** | `papers-index.schema.yaml` | Catálogo 19 papers fundacionales |

---

**Generado por**: Lucas (Scrum Master del Índice)  
**Validación**: ✅ Completado 2026-01-09  
**Script limpieza**: `scripts/extract-and-clean.sh`
