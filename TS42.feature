Feature: TS-42 - Implementar Funcionalidad de Notificaciones Push
    Scenario: Enviar Notificaciones Push
        Given que el usuario tiene habilitadas las notificaciones push
        When hay una actualización sobre un pedido o una nueva publicación
        Then el sistema debe enviar una notificación push al dispositivo del usuario

        Examples:
            | Usuario           | Tipo de Notificación         |
            | Valentina Gómez   | Actualización de Pedido      |
            | Marco Ruiz        | Nueva Publicación            |
            | Sofía Herrera     | Oferta Especial              |
