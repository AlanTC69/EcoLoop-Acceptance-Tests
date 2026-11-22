Feature: Consultar detalle de solicitudes

  Como responsable de un negocio, quiero consultar el detalle de mis
  solicitudes de recojo, para recordar los materiales, la dirección
  y el horario que registré.

  Scenario: Consultar detalle de solicitudes con datos válidos
    Given que el negocio tiene solicitudes registradas
    When abre una de sus solicitudes
    Then se muestran los materiales, cantidades, dirección, fecha y franja
    And estos datos corresponden a la solicitud seleccionada

  Scenario: Solicitud de otro negocio
    Given que la solicitud pertenece a otro negocio
    When intenta abrir esa solicitud
    Then se deniega el acceso
    And no se muestran datos del otro negocio
