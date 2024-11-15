Feature: US-49 - Bloqueo de Cuenta después de Intentos Fallidos de Inicio de Sesión
    Scenario: Bloqueo temporal tras intentos fallidos
        Given que el usuario ha intentado iniciar sesión varias veces sin éxito
        When se alcanza el límite de intentos fallidos
        Then la cuenta debe bloquearse temporalmente y el usuario notificado

        Examples:
            | Usuario      | Intentos Fallidos | Estado de Cuenta |
            | Ricardo Rojas| 5                 | Bloqueada        |
            | José Martínez| 3                 | Activa           |
            | Laura Hidalgo| 6                 | Bloqueada        |
