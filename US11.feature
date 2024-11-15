Feature: US-11 - Cancelar Programación de Pedido
    Scenario: Mostrar Opción de Cancelar Programación de Pedido
        Given que el usuario ha programado un pedido
        When acceda a la sección de "Mis Pedidos" o al detalle del pedido programado
        Then el sistema debe mostrar la opción de cancelar la programación del pedido

    Scenario: Confirmar Cancelación del Pedido Programado
        Given que el usuario desea cancelar el pedido programado
        When confirme la cancelación
        Then el sistema debe eliminar la programación del pedido y enviar una notificación de que el pedido ha sido cancelado correctamente
        
        Examples:
        | Estado de Pedido  |
        | Programado        |
        | En Proceso        |