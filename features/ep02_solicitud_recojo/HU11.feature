Feature: HU11 - Registrar y enviar solicitud de recojo

  Scenario: Registrar y enviar una solicitud válida
    Given el negocio ha iniciado sesión y tiene un local registrado
    When registra materiales, cantidades, punto de recojo, fecha y franja horaria, revisa el resumen y envía la solicitud
    Then EcoLoop registra la solicitud en estado pendiente y muestra su código.

  Scenario: Solicitud con información incompleta
    Given el negocio está completando una solicitud
    When intenta enviarla sin alguno de los datos obligatorios
    Then EcoLoop informa qué dato falta y no registra la solicitud.