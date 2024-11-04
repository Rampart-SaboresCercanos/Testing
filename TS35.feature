Feature: TS-35 - Implementar Funcionalidad de Publicaciones de Platos
    Scenario: Publicación de un Nuevo Plato
        Given que el chef crea una nueva publicación
        When se publica el plato
        Then los usuarios pueden ver la foto del plato, el precio y el stock disponible

        Examples:
            | Chef            | Plato              | Precio | Stock |
            | Juan Pérez      | Lasaña Vegana      | 15.00  | 10    |
            | María González   | Ensalada César     | 12.50  | 5     |
            | Carlos Rodríguez | Tacos de Pollo     | 10.00  | 20    |
