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

## Arquitectura de Submódulos

Este editor integra 3 frameworks externos como submódulos anidados:

```
OnthologyEditor/
├── metamodel/           # UFO + FAIR + XAI (5 capas)
│   └── metamodel.md     # Especificación AI-Optimized
├── MMCO/                # Ontological Coherence Meta-Dynamic Framework
│   ├── ocmf_overview.md # Coherencia ontológica
│   └── toy_models/      # Julia + Python implementations
├── FloveDocs/           # Documentación Flove (PDFs, presentaciones)
│   ├── FloveSlides*.pdf
│   └── FloveTables*.pdf
└── README-SCRIPTORIUM.md
```

### Submódulo: metamodel (Talaia Digital)

| Campo | Valor |
|-------|-------|
| **Origen** | `codeberg.org/talaiadigital/metamodel` |
| **Rama** | `main` |
| **Licencia** | CC BY-SA 4.0 |
| **Propósito** | Framework UFO de 5 capas para validación ontológica |

**Arquitectura de Capas**:

| Capa | Nombre | Propósito |
|------|--------|-----------|
| 0 | META | Auto-especificación del framework |
| 1 | FOUNDATIONAL | Primitivas UFO (Endurants, Perdurants) |
| 2 | CORE_DOMAIN | Conceptualización de dominio específico |
| 3 | APPLICATION | Semántica de implementación |
| 4 | INTERFACE | Explicabilidad e interacción humano-IA |

**Principios FAIR + XAI integrados**: Findable, Accessible, Interoperable, Reusable + Explainable AI.

### Submódulo: MMCO (Talaia Digital)

| Campo | Valor |
|-------|-------|
| **Origen** | `codeberg.org/talaiadigital/MMCO` |
| **Rama** | `master` |
| **Licencia** | AGPL-3.0 |
| **Propósito** | Framework de coherencia ontológica meta-dinámica |

**Premisa Central**: Existencia modelada como campo ontológico de coherencia, no sustrato espacial.

**Jerarquía de Emergencia (7 niveles)**:

| Nivel | Nombre | Descripción |
|-------|--------|-------------|
| 0c | BNP | Base Noetic Potential (plenum pre-métrico) |
| 0b | QCW | Quantum Coherence Web (entrelazamiento Posner) |
| 0a | CTN | Coherent Tubule Network (microtúbulos) |
| 1 | Proto-Geometry | Geometría emergente |
| 2 | Pseudo-Time | Tiempo como proyección |
| 3 | Classical Spacetime | Espacio-tiempo clásico |
| 4 | Matter/Fields | Materia y campos observables |

**Toy Models** (implementaciones):
- `categorical/` - Catlab.jl (Julia)
- `geometric_algebra/` - clifford (Python)
- `topological/` - gudhi (Python)
- `quantum_biology/` - qutip (Python)
- `quantum_circuits/` - qiskit (Python)

### Submódulo: FloveDocs

| Campo | Valor |
|-------|-------|
| **Origen** | `codeberg.org/FloveDocs/Main` |
| **Rama** | `main` |
| **Licencia** | Codeberg standard |
| **Propósito** | Documentación multimedia del paradigma CONFLUENTISM |

**Archivos clave**:
- `FloveSlides25.12.pdf` - Presentaciones diciembre 2025
- `FloveTables25.12.pdf` - Tablas ontológicas diciembre 2025
- `Demos/` - Aplicaciones interactivas

---

## 8. Licencias y Estrategia de Combinación

### Matriz de Licencias

| Componente | Licencia | Copyleft | Obligaciones |
|------------|----------|----------|--------------|
| ALEPH Scriptorium | AIPL v1.0 | No | Atribución, uso comercial permitido |
| OnthologyEditor | AIPL v1.0 | No | Atribución, uso comercial permitido |
| metamodel | CC BY-SA 4.0 | ShareAlike | Atribución + derivados bajo misma licencia |
| MMCO | AGPL-3.0 | Fuerte | Código derivado debe ser AGPL-3.0 |
| FloveDocs | Por confirmar | Desconocido | Pendiente de aclaración con autores |

### Estrategia de Coexistencia

```
┌───────────────────────────────────────────────────────────────────────┐
│              OnthologyEditor (AIPL v1.0 - Permisiva)                  │
├───────────────────────────────────────────────────────────────────────┤
│                                                                       │
│   ZONA A: Referencia Documental      ZONA B: Código Derivado          │
│   ─────────────────────────────      ────────────────────────         │
│                                                                       │
│   ┌─────────────────────────┐       ┌─────────────────────────┐       │
│   │ FloveDocs               │       │ src/compliance/         │       │
│   │ (documentación)         │       │ (validadores)           │       │
│   │                         │       │                         │       │
│   │ • Taxonomía Fields      │       │ SI deriva de metamodel: │       │
│   │ • Paradigmas            │       │ → CC BY-SA 4.0          │       │
│   │ • Diagramas             │       │                         │       │
│   │                         │       │ SI deriva de MMCO:      │       │
│   │ Sin derivación código   │       │ → AGPL-3.0 (separado)   │       │
│   └─────────────────────────┘       └─────────────────────────┘       │
│                                                                       │
│   ┌─────────────────────────┐       ┌─────────────────────────┐       │
│   │ metamodel               │       │ src/templates/          │       │
│   │ (framework UFO)         │       │ (plantillas)            │       │
│   │                         │       │                         │       │
│   │ • Conceptos UFO         │       │ SI deriva de metamodel: │       │
│   │ • 5 capas ontológicas   │       │ → CC BY-SA 4.0          │       │
│   │ • Patrones              │       │                         │       │
│   │                         │       │ SI original:            │       │
│   │ Atribución requerida    │       │ → AIPL v1.0             │       │
│   └─────────────────────────┘       └─────────────────────────┘       │
│                                                                       │
│   ┌─────────────────────────┐                                         │
│   │ MMCO                    │                                         │
│   │ (BNP/emergencia)        │                                         │
│   │                         │                                         │
│   │ • 7 niveles emergencia  │                                         │
│   │ • Conceptos teóricos    │                                         │
│   │                         │                                         │
│   │ USO: Solo referencia    │                                         │
│   │ No derivamos código     │                                         │
│   └─────────────────────────┘                                         │
│                                                                       │
└───────────────────────────────────────────────────────────────────────┘
```

### Reglas de Atribución

1. **Código derivado de metamodel**: Incluir en cabecera:
   ```
   // Derived from Talaia Digital metamodel
   // License: CC BY-SA 4.0
   // Source: https://codeberg.org/talaiadigital/metamodel
   ```

2. **Si se integra código de MMCO**: Módulo separado con LICENSE.AGPL en carpeta

3. **Documentación derivada de FloveDocs**: Atribución en pie de documento

### Compatibilidad

| Combinación | Compatible | Notas |
|-------------|------------|-------|
| AIPL + CC BY-SA 4.0 | ✅ Sí | Derivados CC BY-SA 4.0 |
| AIPL + AGPL-3.0 | ⚠️ Parcial | Código AGPL debe estar separado |
| CC BY-SA 4.0 + AGPL-3.0 | ❌ No directa | Mantener en módulos separados |

---

## 9. Roadmap Actualizado

### Fase 1: Infraestructura ✅
- [x] Configurar proyecto base
- [x] Instalar submódulos (metamodel, MMCO, FloveDocs)
- [x] Documentar estructura

### Fase 2: Compliance
- [ ] Mapear Flove ↔ UFO (usando metamodel)
- [ ] Integrar MMCO para coherencia ontológica
- [ ] Crear validadores según FAIR principles

### Fase 3: Templates
- [ ] Importar estructura de demos.flove.org
- [ ] Parsear jerarquía Fuzzy → PsicoSocial → Freedom
- [ ] Crear JSON templates

### Fase 4: Editor
- [ ] Componente de visualización
- [ ] Edición de nodos
- [ ] Conexiones entre conceptos

### Fase 5: Integración
- [ ] Exportador JSON Schema
- [ ] Exportador TypeScript/Zod
- [ ] Integración AGENT_CREATOR

---

## Notas de Investigación

### lowai.org → demos.flove.org

- `lowai.org` redirige a `demos.flove.org`
- SSL error en HTTPS, usar HTTP para redirección
- Las demos son aplicaciones interactivas del paradigma Flove

### Licencias

| Submódulo | Licencia | Implicaciones |
|-----------|----------|---------------|
| metamodel | CC BY-SA 4.0 | Compartir igual, atribución requerida |
| MMCO | AGPL-3.0 | Código derivado debe ser AGPL (estricto) |
| FloveDocs | Codeberg standard | Uso según términos de Codeberg |

**Nota**: MMCO tiene licencia más restrictiva. Verificar compatibilidad antes de integrar código.

---

## Changelog

| Fecha | Cambio | Autor |
|-------|--------|-------|
| 2025-12-26 | Inicializar submódulo con análisis de Flove | @aleph |
| 2025-12-26 | Añadir submódulos metamodel, MMCO, FloveDocs | @aleph |
