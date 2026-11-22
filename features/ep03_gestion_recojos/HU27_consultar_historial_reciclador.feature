Feature: HU27 - Consultar historial del reciclador
  Como reciclador formalizado (UP02 Sofía Mendoza)
  Quiero consultar mi historial de recojos
  Para llevar el control de mi trabajo

  Scenario: Consultar historial del reciclador con datos válidos
    Given que el reciclador tiene recojos completados
    When abre su historial
    Then se muestran sus recojos completados del más reciente al más antiguo, con fecha, negocio y materiales:
      | fecha      | negocio      | materiales       |
      | 2026-11-20 | Rest. Dhamar | Plástico, Cartón |
      | 2026-11-18 | Bodega Tania | Aluminio         |

  Scenario: Sin recojos completados
    Given que el reciclador no tiene recojos completados
    When abre su historial
    Then se muestra que todavía no hay recojos completados