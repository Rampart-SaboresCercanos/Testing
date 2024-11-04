Feature: TS-36 - Implementar Botón para Solicitar un Plato
    Scenario: Solicitud de un Plato
        Given que el usuario ve una publicación
        When pulsa el botón "Pedir plato"
        Then debería ser redirigido a los métodos de pago disponibles

        Examples:
            | Usuario         | Plato              |
            | Valentina Gómez | Hamburguesa Gourmet |
            | Marco Ruiz      | Pizza Margarita     |
            | Sofía Herrera   | Sushi Variado      |
