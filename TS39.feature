Feature: TS-38 - Implementar Sección de Recetas Compartidas
    Scenario: Visualización de Recetas Compartidas
        Given que el chef comparte una receta
        When el usuario accede a la sección de recetas
        Then puede ver las recetas disponibles y compartirlas con otros

        Examples:
            | Chef             | Receta                 |
            | Valentina Gómez  | Guiso de Lentejas     |
            | Marco Ruiz       | Tarta de Manzana      |
            | Sofía Herrera    | Sopa de Ajo           |
