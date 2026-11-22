Feature: HU15 - Responder reclamos de un recojo

  Scenario: Responder un reclamo asignado
    Given un negocio registró un reclamo sobre un recojo atendido por el reciclador
    When el reciclador consulta el reclamo
    And registra su respuesta
    And actualiza el estado
    Then EcoLoop guarda la respuesta
    And muestra el estado de atención al negocio.

  Scenario: Reclamo ajeno al reciclador
    Given existe un reclamo sobre un recojo atendido por otro reciclador
    When el reciclador intenta responderlo
    Then EcoLoop impide que modifique ese reclamo.
