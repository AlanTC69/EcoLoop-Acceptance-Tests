Feature: Enviar solicitud de recojo

  Como responsable de un negocio, quiero enviar mi solicitud de recojo,
  para dejar constancia de mi pedido y que los recicladores puedan
  atenderlo.

  Scenario: Enviar solicitud de recojo con datos válidos
    Given que el negocio revisó el resumen de su solicitud
    When confirma el envío con todos los datos obligatorios
    Then se crea una sola solicitud en estado pendiente de aceptación
    And se muestra su código

  Scenario: Datos incompletos o envío repetido
    Given que falta un dato obligatorio o la misma solicitud ya fue enviada
    When intenta enviar la solicitud o pulsa de nuevo el botón de envío
    Then no se crea una solicitud incompleta ni duplicada
    And se informa el resultado
