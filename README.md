# EcoLoop - Especificaciones de Aceptación (BDD / Gherkin)

Repositorio de especificaciones de pruebas de aceptación en formato Gherkin (`.feature`) para la validación de requisitos de **EcoLoop**, plataforma digital para la gestión sostenible de residuos reciclables en Santiago de Surco.

## Alcance de Validación (BDD)
Los archivos `.feature` contenidos en este repositorio definen el comportamiento esperado del sistema mediante escenarios estructurados (`Given`, `When`, `Then`) y tablas de datos (*Data Tables*). Dado que el alcance actual del proyecto corresponde a la fase de **Ingeniería de Requisitos** (y no a la construcción del software), estos archivos aún no incluyen implementaciones de *step definitions* ni ejecución automatizada; quedan documentados como base verificable para su futura automatización durante los sprints de desarrollo.

## Información Académica
* **Curso:** 1ASI0786 – Ingeniería de Requisitos (NRC 16657)
* **Docente:** Alan Tito Gutiérrez Gutiérrez
* **Ciclo:** 2026-2

## Equipo EcoLoop
* **Alan Gabriel Tuero Calcina** (U20241J320) – Developer
* **Valeria Anthuane Quispe Mendoza** (U20251K650) – Developer
* **Yadhira Shaid Mamani Calizaya** (U20251K536) – Developer
* **Cesar Giampiero Rodriguez Quiliche** (U20251J100) – Scrum Master & Developer
* **Ana Luz Vilcayauri Coronado** (U202524297) – Product Owner

## Estructura del Repositorio
* `features/ep02_solicitud_recojo/`: Especificaciones de la Épica Core 1 (`EP02`: HU11 – HU19).
* `features/ep03_gestion_recojos/`: Especificaciones de la Épica Core 2 (`EP03`: HU20 – HU27).
* `features/no_funcionales/`: Especificaciones de Historias de Usuario No Funcionales (`HUNF01` – `HUNF04`).