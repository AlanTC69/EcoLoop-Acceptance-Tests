Feature: Revisar resumen de solicitud

  Como responsable de un negocio, quiero revisar el resumen de mi
  solicitud antes de enviarla, para detectar errores en los datos
  que registré.

  Scenario: Revisar resumen de solicitud con datos válidos
    Given que el negocio completó los datos de su solicitud
    When abre el resumen antes de enviarla
    Then se muestran materiales, cantidades, dirección, fecha y franja
    And se ofrece una opción para volver y corregir los datos

  Scenario: Corrección desde el resumen
    Given que el negocio detecta una cantidad errónea en el resumen
    When vuelve al paso de materiales y corrige la cantidad
    Then se conserva el resto de los datos
    And al regresar al resumen se muestra la cantidad corregida
