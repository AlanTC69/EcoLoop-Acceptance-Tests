Feature: HU13 - Marcar recojo como en camino

  Scenario: Marcar recojo en camino
    Given el reciclador tiene un recojo confirmado
    When inicia su traslado y selecciona la opción «En camino»
    Then EcoLoop actualiza el estado del recojo y lo muestra al negocio.

  Scenario: Recojo no confirmado
    Given el recojo todavía no está confirmado
    When el reciclador intenta marcarlo como «En camino»
    Then EcoLoop impide el cambio de estado.
