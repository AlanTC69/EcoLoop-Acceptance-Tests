Feature: HU24 - Consultar orden de visita sugerido
  Como reciclador formalizado (UP02 Sofía Mendoza)
  Quiero que la plataforma me proponga un orden de visita según la distancia entre mis puntos
  Para reducir mis costos de traslado

  Scenario: Consultar orden de visita sugerido con datos válidos
    Given que el reciclador tiene dos o más puntos aceptados para el día:
      | punto | negocio       | franja_horaria |
      | 1     | Bodega El Sol | 10:00 - 12:00  |
      | 2     | Rest. Dhamar  | 11:00 - 13:00  |
    When solicita un orden sugerido
    Then se muestra un orden sugerido compatible con las franjas, que puede aplicar o descartar

  Scenario: Franjas horarias incompatibles
    Given que no existe un orden que respete las franjas horarias
    When solicita un orden sugerido
    Then se explica que no hay sugerencia compatible y se conserva el orden manual