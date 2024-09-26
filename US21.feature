Feature: US21 - Guardar Recetas Favoritas
    Scenario: Guardar una receta como favorita
        Given que el usuario ha encontrado una receta de su interés
        When marca la receta como favorita
        Then esta se almacenará en una sección personal de recetas guardadas

        Examples:
            | receta              | guardada en favoritos |
            | Tarta de Manzana     | sí                    |
            | Sopa de Verduras     | sí                    |

    Scenario: Ver recetas guardadas y organizarlas en colecciones
        Given que el usuario ha guardado varias recetas
        When accede a su perfil
        Then puede ver sus recetas guardadas y organizarlas en colecciones personalizadas

        Examples:
            | colección           | recetas guardadas                   |
            | Postres Favoritos    | Tarta de Manzana, Brownie de Chocolate |
            | Recetas Rápidas      | Sopa de Verduras, Ensalada Verde       |
