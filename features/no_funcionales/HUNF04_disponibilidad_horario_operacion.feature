Feature: HUNF04 - Disponibilidad: servicio en el horario de operación
  Como negocio generador o reciclador formalizado (UP01 Tania Huamán y UP02 Sofía Mendoza)
  Quiero poder usar EcoLoop durante mi horario de operación
  Para coordinar recojos sin interrupciones

  Scenario: Servicio disponible
    Given que es horario de operación (de lunes a sábado, de 06:00 a 20:00)
    When un usuario abre la plataforma o envía una solicitud
    Then la plataforma responde, con una disponibilidad mensual de al menos 99 % (máximo 7 horas sin servicio al mes)

  Scenario: Falla temporal del servicio
    Given que ocurre una falla del servidor mientras un negocio usa la plataforma
    When el negocio vuelve a abrir la aplicación
    Then se muestra un aviso de servicio interrumpido, el servicio se restablece en un máximo de 2 horas y se conservan las solicitudes ya enviadas sin pérdida de datos