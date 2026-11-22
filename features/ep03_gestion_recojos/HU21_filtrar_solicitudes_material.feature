Feature: HU21 - Filtrar solicitudes por material
  Como reciclador formalizado (UP02 Sofía Mendoza)
  Quiero filtrar las solicitudes por tipo de residuo
  Para ver primero las de los materiales que me interesan

  Scenario: Filtrar solicitudes por material con datos válidos
    Given que el reciclador está consultando solicitudes disponibles
    When selecciona un material del filtro:
      | material_filtro |
      | Cartón          |
    Then se muestran solo solicitudes que contienen el material elegido y al quitar el filtro se recupera el listado anterior

  Scenario: Material sin solicitudes
    Given que ninguna solicitud contiene el material seleccionado:
      | material_filtro |
      | Vidrio          |
    When aplica el filtro por ese material
    Then se muestra un listado vacío y se permite retirar el filtro