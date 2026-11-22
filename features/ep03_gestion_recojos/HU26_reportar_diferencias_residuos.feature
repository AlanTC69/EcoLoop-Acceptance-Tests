Feature: HU26 - Reportar diferencias en los residuos
  Como reciclador formalizado (UP02 Sofía Mendoza)
  Quiero reportar que los residuos no coinciden con lo declarado
  Para dejar constancia de la diferencia y que se reprograme o se ajuste el recojo

  Scenario: Reportar diferencias en los residuos con datos válidos
    Given que el reciclador está verificando los materiales de una solicitud confirmada
    When describe la diferencia entre lo declarado y lo encontrado y envía el reporte:
      | material_declarado | hallazgo_real                               |
      | Cartón (15 kg)     | Material húmedo y mezclado con basura común |
    Then se guarda la diferencia descrita, se avisa al negocio y el recojo queda con incidencia

  Scenario: Descripción vacía
    Given que la descripción de la diferencia está vacía
    When intenta enviar el reporte
    Then se solicita describir lo encontrado y no se guarda el reporte