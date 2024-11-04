Feature: US-24 - Mostrar Platos Populares en la Vista Home
    Scenario: Mostrar lista de platos populares
        Given que el usuario ha accedido a la vista Home
        When se carga la sección de "Platos Más Populares"
        Then el sistema debe mostrar una lista de platos populares con sus imágenes, nombres y cocineros

        Examples:
            | Plato               | Imagen               | Cocinero         |
            | Tacos al Pastor     | tacos-al-pastor.jpg | Chef Juan        |
            | Risotto de Setas    | risotto-setas.jpg   | Chef María       |
            | Sushi Variado       | sushi-variado.jpg   | Chef Akira       |

    Scenario: Hacer pedido de un plato popular
        Given que el usuario ha visto un plato popular que le gusta
        When hace clic en el botón "Hacer Pedido" de ese plato
        Then el sistema debe redireccionarlo a la sección “Pedidos”

        Examples:
            | Plato               | Botón "Hacer Pedido" |
            | Tacos al Pastor     | Hacer Pedido         |
            | Risotto de Setas    | Hacer Pedido         |
            | Sushi Variado       | Hacer Pedido         |
