Feature: HU12 - Verificar formalización del reciclador

  Scenario: Formalización verificada
    Given el reciclador ha registrado sus documentos de formalización
    When EcoLoop confirma su validez mediante el mecanismo de verificación establecido
    Then habilita su cuenta para atender solicitudes de recojo.

  Scenario: Formalización no verificada
    Given el reciclador ha registrado sus documentos
    When EcoLoop no puede confirmar su formalización
    Then mantiene restringida su cuenta e informa el resultado de la verificación.
