Feature: HU20 - Ver solicitudes disponibles por zona
  Como reciclador formalizado (UP02 Sofía Mendoza)
  Quiero ver el listado de solicitudes disponibles en las zonas donde opero
  Para elegir cuáles atender

  Scenario: Ver solicitudes disponibles por zona con datos válidos
    Given que el reciclador tiene su cuenta validada y sus zonas guardadas:
      | zona_operacion    | materiales_aceptados |
      | Santiago de Surco | Cartón, Plástico     |
    When abre el listado de solicitudes disponibles
    Then se muestran únicamente solicitudes pendientes de sus zonas y compatibles con los materiales que recibe

  Scenario: Sin solicitudes compatibles
    Given que no hay solicitudes compatibles con sus zonas y materiales
    When abre el listado de solicitudes disponibles
    Then se muestra que no hay solicitudes disponibles, sin presentar solicitudes ajenas a su cobertura