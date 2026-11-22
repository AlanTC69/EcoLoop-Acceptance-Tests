Feature: Registrar materiales y cantidad estimada

  Como responsable de un negocio, quiero indicar los tipos de material
  reciclable y la cantidad estimada de cada uno en mi solicitud, para
  que el reciclador sepa qué va a recoger.

  Scenario: Registrar materiales con cantidades válidas
    Given que el negocio está registrando una solicitud de recojo
    When agrega uno o más materiales con cantidades estimadas mayores que cero
    Then se guardan los materiales con sus cantidades estimadas en kilogramos

  Scenario: Cantidad vacía o no positiva
    Given que alguna cantidad está vacía o es menor o igual a cero
    When intenta continuar con la solicitud
    Then se indica la cantidad inválida
    And se impide continuar
