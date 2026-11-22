Feature: Consultar estado del recojo

  Como responsable de un negocio, quiero consultar el estado actualizado
  de mi solicitud, para saber si el recojo está pendiente, confirmado,
  en camino, completado o cancelado.

  Scenario: Consultar estado del recojo con datos válidos
    Given que el negocio tiene una solicitud registrada
    When abre el seguimiento después de un cambio de estado
    Then se muestra el último estado guardado
    And se muestra la fecha y hora del cambio

  Scenario: Solicitud aún pendiente
    Given que el negocio envió su solicitud
    And ningún reciclador la ha aceptado
    When abre el seguimiento de su solicitud
    Then se muestra el estado pendiente
    And se muestra la fecha y hora en que se registró la solicitud
