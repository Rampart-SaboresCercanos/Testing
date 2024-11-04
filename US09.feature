Feature: US-09 - Realizar Pedidos con Anticipación
    Scenario: Seleccionar la fecha de entrega en un pedido futuro
        Given que el usuario ha seleccionado un plato de una publicación futura
        When decide realizar un pedido
        Then el sistema debe permitir seleccionar la fecha de entrega dentro de los días disponibles para pedido

        Examples:
            | Usuario           | Fecha de Entrega          |
            | Valentina Gómez   | 2024-11-10                |
            | Marco Ruiz        | 2024-11-15                |
            | Sofía Herrera     | 2024-11-20                |

    Scenario: Confirmación del pedido anticipado
        Given que el usuario completa el proceso de pedido
        When se confirma el pedido
        Then el sistema debe enviar una confirmación con los detalles del pedido, incluyendo la fecha programada de entrega

        Examples:
            | Usuario           | Detalles del Pedido                                  |
            | Valentina Gómez   | "Pedido confirmado: Ensalada César, Entrega: 2024-11-10" |
            | Marco Ruiz        | "Pedido confirmado: Pizza Margherita, Entrega: 2024-11-15" |
            | Sofía Herrera     | "Pedido confirmado: Tacos al Pastor, Entrega: 2024-11-20" |
