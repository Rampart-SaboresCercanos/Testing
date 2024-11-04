Feature: US-10 - Programar Pedido desde una Prepublicación
    Scenario: Mostrar fecha y opciones de hora para la programación del pedido
        Given que el usuario está visualizando una prepublicación
        When seleccione la opción de "Programar Pedido"
        Then el sistema debe mostrar la fecha de la publicación del plato y permitir al usuario elegir una hora de entrega disponible

        Examples:
            | Usuario           | Fecha de Publicación     | Horas Disponibles       |
            | Valentina Gómez   | 2024-11-10               | 10:00 AM, 12:00 PM     |
            | Marco Ruiz        | 2024-11-15               | 11:00 AM, 1:00 PM      |
            | Sofía Herrera     | 2024-11-20               | 2:00 PM, 4:00 PM       |

    Scenario: Confirmar la programación del pedido
        Given que el usuario ha seleccionado una hora de entrega
        When confirme la programación del pedido
        Then el sistema debe mostrar una confirmación con la fecha y la hora seleccionadas para el pedido

        Examples:
            | Usuario           | Confirmación                               |
            | Valentina Gómez   | "Pedido programado para el 2024-11-10 a las 10:00 AM" |
            | Marco Ruiz        | "Pedido programado para el 2024-11-15 a las 1:00 PM"  |
            | Sofía Herrera     | "Pedido programado para el 2024-11-20 a las 2:00 PM"  |
