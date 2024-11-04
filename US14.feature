Feature: US-14 - Visualización de información detallada del plato en el Pedido
    Scenario: Mostrar detalles del pedido
        Given que el usuario está viendo la lista de pedidos en la sección "Mis pedidos"
        When acceda a los detalles de un pedido
        Then el sistema debe mostrar la imagen del plato pedido, el nombre del plato, y otros detalles relevantes

        Examples:
            | Usuario           | Plato Pedido                      | Imagen                     | Otros Detalles                             |
            | Valentina Gómez   | "Ensalada César"                 | "ensalada_cesar.jpg"      | "Precio: $10, Cantidad: 1, Estado: Entregado" |
            | Marco Ruiz        | "Pizza Margherita"               | "pizza_margherita.jpg"    | "Precio: $15, Cantidad: 1, Estado: Entregado"  |
            | Sofía Herrera     | "Sushi"                          | "sushi.jpg"               | "Precio: $12, Cantidad: 2, Estado: Entregado"    |
