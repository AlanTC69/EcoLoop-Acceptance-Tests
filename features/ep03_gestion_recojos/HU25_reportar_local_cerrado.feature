Feature: HU25 - Reportar local cerrado
  Como reciclador formalizado (UP02 Sofía Mendoza)
  Quiero reportar que el local estaba cerrado cuando llegué
  Para dejar constancia y que el recojo se reprograme

  Scenario: Reportar local cerrado con datos válidos
    Given que el reciclador llegó al punto de una solicitud confirmada
    When reporta que encontró el local cerrado
    Then se registra la incidencia con fecha y hora, se avisa al negocio y la solicitud pasa a con incidencia

  Scenario: Reporte de otro reciclador
    Given que la solicitud está asignada a otro reciclador
    When intenta reportar el local cerrado
    Then se deniega la operación y se conserva la solicitud