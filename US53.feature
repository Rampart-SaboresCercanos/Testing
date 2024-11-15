Feature: US-53 - Notificaciones de Seguridad en Tiempo Real
    Scenario: Notificación por inicio de sesión sospechoso
        Given que el sistema detecta un inicio de sesión sospechoso
        When este ocurra
        Then el usuario debe recibir una notificación en tiempo real con opciones para confirmar o bloquear el acceso

        Examples:
            | Usuario       | Ubicación Sospechosa  | Notificación         |
            | José Flores   | China                | Notificación enviada |
            | Luis López    | Rusia                | Notificación enviada |
            | Carla Montalvo| Brasil               | Notificación enviada |
