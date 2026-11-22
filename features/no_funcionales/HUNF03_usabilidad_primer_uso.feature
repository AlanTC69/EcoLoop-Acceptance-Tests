Feature: HUNF03 - Usabilidad: primer uso sin capacitación
  Como responsable de un negocio (UP01 Tania Huamán)
  Quiero enviar mi primera solicitud de recojo sin capacitación previa
  Para usar EcoLoop aunque no tenga experiencia con aplicaciones

  Scenario: Primera solicitud sin ayuda
    Given que un responsable de negocio usa EcoLoop por primera vez y tiene a mano los datos del recojo
    When completa y envía su solicitud siguiendo solo las indicaciones de la pantalla:
      | paso | seccion         |
      | 1    | Materiales      |
      | 2    | Punto de recojo |
      | 3    | Fecha y franja  |
      | 4    | Resumen         |
      | 5    | Envío           |
    Then la envía en un máximo de 5 pasos (materiales, punto de recojo, fecha y franja, resumen y envío) y en menos de 5 minutos

  Scenario: Mensaje de error comprensible
    Given que el responsable deja un dato obligatorio vacío
    When intenta continuar con la solicitud
    Then el mensaje nombra el campo faltante y explica en lenguaje sencillo cómo corregirlo, y se conservan los demás datos ya ingresados