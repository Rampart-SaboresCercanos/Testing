Feature: TS-37 - Implementar Programación de Pedido
    Scenario: Programación de un Pedido
        Given que el usuario selecciona un plato programado
        When presiona el botón "Programar pedido"
        Then debería poder elegir la fecha y hora de entrega y ser redirigido al pago

        Examples:
            | Usuario         | Plato              |
            | Valentina Gómez | Ensalada César     |
            | Marco Ruiz      | Tacos al Pastor    |
            | Sofía Herrera   | Pasta Carbonara    |
