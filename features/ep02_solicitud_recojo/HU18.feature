Feature: Cancelar solicitud pendiente

  Como responsable de un negocio, quiero cancelar una solicitud
  pendiente de aceptación, para evitar que se coordine un recojo
  que ya no necesito.

  Scenario: Cancelar solicitud pendiente con datos válidos
    Given que la solicitud está pendiente de aceptación
    When confirma la cancelación
    Then la solicitud pasa a cancelada
    And deja de aparecer como disponible para los recicladores

  Scenario: Solicitud ya completada
    Given que el recojo de la solicitud ya se completó
    When intenta cancelarla
    Then se impide cancelar
    And se conserva el registro completado
