Feature: HU22 - Aceptar solicitud de recojo
  Como reciclador formalizado (UP02 Sofía Mendoza)
  Quiero aceptar una solicitud
  Para comprometerme a hacer ese recojo

  Scenario: Aceptar solicitud de recojo con datos válidos
    Given que la solicitud sigue pendiente y corresponde a la zona y materiales del reciclador:
      | codigo_solicitud | zona              | material | estado    |
      | SOL-2026-014     | Santiago de Surco | Plástico | Pendiente |
    When confirma que acepta la solicitud
    Then la solicitud queda confirmada y asignada a ese reciclador, y deja de estar disponible para otros

  Scenario: Solicitud tomada por otro reciclador
    Given que otro reciclador aceptó primero la misma solicitud
    When confirma su aceptación
    Then se avisa que ya no está disponible y se conserva una sola asignación