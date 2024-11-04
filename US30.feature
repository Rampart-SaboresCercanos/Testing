Feature: US-30 - Guardar Recetas Favoritas
    Scenario: Mostrar recetas favoritas guardadas
        Given que el usuario ha guardado recetas previamente
        When acceda a la sección "Favoritos"
        Then el sistema debe mostrar las recetas que el usuario ha marcado como favoritos

        Examples:
            | Recetas Favoritas                 |
            | Tarta de Limón                   |
            | Ensalada César                   |
            | Galletas de Chocolate            |

    Scenario: No hay recetas guardadas
        Given que el usuario no ha guardado ninguna receta como favorito
        When acceda a la sección "Favoritos"
        Then el sistema debe mostrar un mensaje indicando que no tiene recetas guardadas como favoritos

        Examples:
            | Mensaje                          |
            | "No tienes recetas guardadas como favoritas." |
            | "Tu lista de favoritos está vacía."             |
            | "Explora recetas y marca tus favoritas."        |
