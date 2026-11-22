
Feature: Carga rápida del listado de solicitudes

  Como reciclador formalizado, quiero que el listado de solicitudes disponibles
  cargue rápido aun con datos móviles, para decidir mis recojos sin perder
  tiempo en ruta.

  Scenario: Carga en condiciones normales
    Given que el reciclador tiene 200 solicitudes pendientes en sus zonas
    And tiene una conexión 4G estable
    When abre el listado de solicitudes disponibles
    Then el listado se muestra en un máximo de 3 segundos

  Scenario: Conexión lenta
    Given que el reciclador tiene una conexión lenta (3G)
    When abre el listado de solicitudes disponibles
    Then se muestra un indicador de carga
    And el listado aparece en un máximo de 8 segundos
    And la aplicación no se cierra
    And se conservan los filtros aplicados
