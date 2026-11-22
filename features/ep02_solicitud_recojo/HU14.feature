Feature: HU14 - Consultar normas de reciclaje actualizadas

  Scenario: Consultar normas disponibles
    Given el usuario ingresa a la sección de normas de reciclaje
    When solicita consultar la información de Santiago de Surco
    Then EcoLoop muestra las normas registradas
    And muestra su fuente oficial.

  Scenario: Información no disponible
    Given el usuario ingresa a la sección de normas
    When no existe información normativa disponible o actualizada
    Then EcoLoop informa que no puede mostrar información vigente.

