Feature: TS-41 - Implementar Funcionalidad de Favoritos
    Scenario: Marcar Chef como Favorito
        Given que el usuario accede a la sección de favoritos
        When selecciona un chef como favorito
        Then debería poder verlo en la lista de favoritos en futuras búsquedas

        Examples:
            | Usuario           | Chef Favorito         |
            | Valentina Gómez   | Chef Carlos Pérez     |
            | Marco Ruiz        | Chef Ana Martínez     |
            | Sofía Herrera     | Chef Javier López     |
