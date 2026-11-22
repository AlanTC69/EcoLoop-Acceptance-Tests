Feature: Seleccionar fecha y franja horaria

  Como responsable de un negocio, quiero seleccionar una fecha y una
  franja horaria disponibles para el recojo, para coordinar la entrega
  según el horario de mi negocio.

  Scenario: Seleccionar fecha y franja horaria con datos válidos
    Given que el negocio ya indicó su horario de atención
    When elige una fecha futura y una franja disponible dentro de su horario
    Then se conserva la fecha y la franja elegidas como preferencia del negocio
    And el recojo aún no se confirma

  Scenario: Fecha pasada o fuera de horario
    Given que la fecha elegida ya pasó o la franja queda fuera del horario del local
    When intenta confirmar esa fecha y franja
    Then se rechaza la selección
    And se ofrecen opciones válidas
