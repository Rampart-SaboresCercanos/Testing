Feature: US-46 - Gestión de Sesiones y Expiración Automática
    Scenario: Expiración automática de sesión tras inactividad
        Given que el usuario ha estado inactivo
        When el tiempo configurado de inactividad se cumple
        Then la sesión debe cerrarse automáticamente y solicitar autenticación nuevamente

        Examples:
            | Usuario      | Tiempo de Inactividad | Resultado           |
            | Carlos Díaz  | 15 minutos            | Cierre de sesión    |
            | Laura Pérez  | 30 minutos            | Cierre de sesión    |
            | Jorge Gómez  | 10 minutos            | Cierre de sesión    |
