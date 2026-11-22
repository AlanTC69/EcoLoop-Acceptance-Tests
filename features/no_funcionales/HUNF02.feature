Feature: Protección de la cuenta

  Como negocio generador o reciclador formalizado, quiero que mi cuenta
  se proteja contra accesos no autorizados, para que nadie ajeno use mi
  sesión ni vea mis solicitudes.

  Scenario: Sesión inactiva
    Given que un usuario inició sesión
    And permanece 30 minutos sin actividad
    When intenta realizar una acción en la plataforma
    Then se cierra la sesión
    And se solicita iniciar sesión de nuevo
    And no se muestra ningún dato de la cuenta

  Scenario: Intentos fallidos de acceso
    Given que un usuario ingresó 5 veces seguidas una contraseña incorrecta
    When intenta iniciar sesión por sexta vez
    Then el acceso se bloquea por 15 minutos
    And se informa el tiempo de espera
    And no se revela si el correo está registrado
