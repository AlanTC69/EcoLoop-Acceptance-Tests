Feature: Registrar punto de recojo

  Como responsable de un negocio, quiero indicar la dirección del
  punto de recojo y una referencia, para que el reciclador ubique
  fácilmente mi negocio.

  Scenario: Registrar punto de recojo con datos válidos
    Given que el negocio está registrando el punto de recojo
    When guarda la dirección y, si corresponde, una referencia
    Then se guarda la dirección de Surco con la referencia opcional

  Scenario: Dirección de recojo faltante
    Given que falta la dirección de recojo
    When intenta guardar el punto de recojo
    Then se señala el campo obligatorio
    And no se guarda la solicitud
