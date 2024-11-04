Feature: TS-38 - Implementar Sección de Recetas Compartidas
    Scenario: Visualizar Recetas Compartidas
        Given que el chef comparte una receta
        When el usuario accede a la sección de recetas
        Then puede ver las recetas disponibles y compartirlas con otros

        Examples:
        | Tipo de Receta | Estado de Visibilidad |
        | Vegetariana    | Visible               |
        | Vegana         | Visible               |