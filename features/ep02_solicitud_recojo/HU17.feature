Feature: Reprogramar solicitud pendiente

  Como responsable de un negocio, quiero cambiar la fecha y la franja
  horaria de una solicitud pendiente de aceptación, para adaptar
  el recojo a un cambio en mi disponibilidad.

  Scenario: Reprogramar solicitud pendiente con datos válidos
    Given que la solicitud está pendiente de aceptación
    When selecciona otra fecha futura y franja disponible
    Then se reemplazan la fecha y la franja
    And la solicitud continúa pendiente de aceptación

  Scenario: Solicitud ya aceptada
    Given que un reciclador ya aceptó la solicitud
    When intenta cambiar su fecha o su franja horaria
    Then se bloquea la edición
    And se conserva la fecha confirmada
