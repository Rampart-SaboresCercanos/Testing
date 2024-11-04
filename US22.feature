Feature: US-22 - Buscar Recetas por Nombre o Ingredientes
    Scenario: Buscar recetas usando términos específicos
        Given que el usuario está en la vista de búsqueda de recetas
        When ingresa un término de búsqueda (ya sea el nombre del plato o un ingrediente) y hace clic en "Buscar"
        Then el sistema debe mostrar una lista de recetas que coinciden con el término de búsqueda, incluyendo recetas que contengan el ingrediente especificado o que tengan un nombre similar

        Examples:
            | Término de Búsqueda  | Recetas Encontradas                                       |
            | "Tarta de Manzana"   | Tarta de Manzana, Tarta de Manzana Vegana              |
            | "Pollo"              | Pollo al Horno, Ensalada de Pollo, Pollo a la Naranja   |
            | "Tomate"             | Salsa de Tomate, Ensalada de Tomate y Aguacate         |
