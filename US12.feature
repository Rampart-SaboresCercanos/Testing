Feature: US-12 - Visualización de Historial de Pedidos
    Scenario: Mostrar lista de órdenes pasadas
        Given que el usuario ha realizado pedidos previos
        When acceda a la sección "Mis pedidos"
        Then el sistema debe mostrar una lista con las órdenes pasadas

        Examples:
            | Usuario           | Órdenes Pasadas                                           |
            | Valentina Gómez   | "Pedido de Ensalada César - 2024-11-01"                 |
            | Marco Ruiz        | "Pedido de Pizza Margherita - 2024-11-02"                |
            | Sofía Herrera     | "Pedido de Sushi - 2024-11-03"                            |

    Scenario: No hay pedidos previos
        Given que el usuario no ha realizado pedidos
        When acceda a la sección "Mis pedidos"
        Then el sistema debe mostrar un mensaje indicando que no tiene pedidos previos

        Examples:
            | Usuario           | Mensaje                              |
            | Valentina Gómez   | "No tienes pedidos previos."        |
            | Marco Ruiz        | "No tienes pedidos previos."        |
            | Sofía Herrera     | "No tienes pedidos previos."        |
