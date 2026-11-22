Feature: HU23 - Ver recojos del día en un mapa
  Como reciclador formalizado (UP02 Sofía Mendoza)
  Quiero ver en un mapa las solicitudes que acepté para hoy
  Para planificar mi ruta del día

  Scenario: Ver recojos del día en un mapa con datos válidos
    Given que el reciclador tiene solicitudes aceptadas para hoy:
      | codigo_solicitud | direccion                      | franja_horaria |
      | SOL-2026-014     | Av. Caminos del Inca 450       | 14:00 - 16:00  |
      | SOL-2026-018     | Jr. Monte Rosa 120, Chacarilla | 16:00 - 18:00  |
    When abre el mapa de su jornada
    Then cada recojo aceptado para hoy aparece como un punto y al abrirlo se muestran dirección y horario

  Scenario: Jornada sin recojos
    Given que no hay recojos aceptados para hoy
    When abre el mapa de su jornada
    Then se muestra que no hay visitas programadas para ese día