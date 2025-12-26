# OnthologyEditor — Integración Scriptorium

> **Submódulo #15** del ecosistema ALEPH Scriptorium  
> **Nombre PascalCase**: `OnthologyEditor`  
> **Repo remoto**: https://github.com/escrivivir-co/alephscript-onthology-editor  
> **Rama integración**: `main`

---

## Propósito

Editor de ontologías para el Scriptorium que permite:
1. **Cargar templates de ontologías** (comenzando con Flove/Iowa)
2. **Visualizar y editar** estructuras ontológicas
3. **Exportar** ontologías en formatos compatibles (JSON Schema, TypeScript)
4. **Integrar con AGENT_CREATOR** para crear agentes basados en ontologías

---

## Análisis de Ontología Flove

### Fuentes Consultadas

| Fuente | URL | Contenido |
|--------|-----|-----------|
| Web principal | https://flove.org | Paradigma CONFLUENTISM |
| Demos | https://demos.flove.org | Aplicaciones interactivas |
| Documentación | https://codeberg.org/FloveDocs/Main | 108 commits, 924 MiB |
| Apps | https://flove.org/apps | 15+ aplicaciones |

### Paradigma: CONFLUENTISM

Flove propone un paradigma filosófico-computacional llamado **Confluentism** que integra:

```
                    CONFLUENTISM
                         │
        ┌────────────────┼────────────────┐
        ▼                ▼                ▼
    FUZZY LOGIC    PSICOSOCIAL     FREEDOM/ECONOMY
        │                │                │
   ┌────┴────┐      ┌────┴────┐      ┌────┴────┐
   ▼    ▼    ▼      ▼         ▼      ▼         ▼
Relate Explain View SOULS  TRUSTFUL Free    Making
```

### Arquitectura de Apps (demos.flove.org)

**Nivel 1: Fuzzy Logic**
- `Relate` - Relaciones difusas
- `Explain` - Explicaciones graduadas
- `View` - Visualización de estados

**Nivel 2: PsicoSocial**
- `SOULS` - Framework de identidad
- `TRUSTFUL` - Sistema de confianza

**Nivel 3: Freedom/Economy**
- `Free` - Libertad personal
- `Making` - Economía colaborativa

### Catálogo de Aplicaciones (flove.org/apps)

| Categoría | Apps |
|-----------|------|
| **Personal SOULS** | Souls, Triads, CrowdTests, OpenAstro, Diesafe |
| **Local Trust** | OwnTrust, MyFamily, CrowdParenting, AdoreYou |
| **Social Freedom** | FreeData, Flove army, FreeProject |
| **Economical Making** | Worthing, CrowdCrafting, Forking Parties |
| **Offer service** | Freed, Shareful, Chain |

### Documentación FloveDocs (Codeberg)

Repositorio principal: `https://codeberg.org/FloveDocs/Main`

| Recurso | Descripción |
|---------|-------------|
| `FloveSlides25.12.pdf` | Presentación diciembre 2025 |
| `FloveTables25.12.ods` | Tablas de ontología |
| `Demos/` | Demos interactivas |
| `Presentations/` | Presentaciones históricas |
| `PAPERS25.10.zip` | Papers académicos |
| `Matters & BioSystems.ods` | Sistemas biológicos |

---

## Estructura del Submódulo

```
OnthologyEditor/
├── README-SCRIPTORIUM.md       # Este archivo
├── README.md                   # Documentación técnica
├── package.json                # Dependencias
├── src/
│   ├── templates/              # Templates de ontologías
│   │   └── flove/              # Ontología Flove
│   ├── editor/                 # Componentes del editor
│   └── exporters/              # Exportadores
└── docs/                       # Documentación adicional
```

---

## Integración con Scriptorium

### Plugin Asociado

| Campo | Valor |
|-------|-------|
| **Plugin ID** | `flove-editor` |
| **Código** | `.github/plugins/flove-editor/` |
| **Datos** | `ARCHIVO/PLUGINS/FLOVE_EDITOR/` |
| **Bridge Agent** | `plugin_ox_floveeditor` |

### Dependencias

| Tipo | Dependencia | Uso |
|------|-------------|-----|
| Opcional | `agent-creator` | Crear agentes desde ontologías |
| Opcional | `typed-prompting` | Validación de esquemas |
| Opcional | `mcp-presets` | Presets MCP para ontologías |

### Handoffs Previstos

| Handoff | Descripción |
|---------|-------------|
| Cargar ontología Flove | Importar template desde demos.flove.org |
| Editar ontología | Abrir editor visual |
| Exportar a JSON Schema | Generar esquema validable |
| Crear agente desde ontología | Integrar con AGENT_CREATOR |

---

## Roadmap

### Fase 1: Infraestructura
- [ ] Configurar proyecto base
- [ ] Crear estructura de carpetas
- [ ] Documentar ontología Flove

### Fase 2: Templates
- [ ] Importar estructura de demos.flove.org
- [ ] Parsear jerarquía Fuzzy → PsicoSocial → Freedom
- [ ] Crear JSON templates

### Fase 3: Editor
- [ ] Componente de visualización
- [ ] Edición de nodos
- [ ] Conexiones entre conceptos

### Fase 4: Integración
- [ ] Exportador JSON Schema
- [ ] Exportador TypeScript
- [ ] Integración AGENT_CREATOR

---

## Notas de Investigación

### lowai.org → demos.flove.org

- `lowai.org` redirige a `demos.flove.org`
- SSL error en HTTPS, usar HTTP para redirección
- Las demos son aplicaciones interactivas del paradigma Flove

### Licencia

Según el repositorio FloveDocs, el proyecto usa licencia estándar de Codeberg.

---

## Changelog

| Fecha | Cambio | Autor |
|-------|--------|-------|
| 2025-12-26 | Inicializar submódulo con análisis de Flove | @aleph |
