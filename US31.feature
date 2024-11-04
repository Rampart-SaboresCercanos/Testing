Feature: US-31 - Guardar Cocineros Favoritos
    Scenario: Mostrar cocineros favoritos guardados
        Given que el usuario ha guardado cocineros previamente
        When acceda a la sección "Favoritos"
        Then el sistema debe mostrar los cocineros que el usuario ha marcado como favoritos

        Examples:
            | Cocineros Favoritos               |
            | Chef Juan Pérez                   |
            | Chef Ana García                   |
            | Chef Laura Martínez                |

    Scenario: No hay cocineros guardados
        Given que el usuario no ha guardado ningún cocinero como favorito
        When acceda a la sección "Favoritos"
        Then el sistema debe mostrar un mensaje indicando que no tiene cocineros guardados como favoritos

        Examples:
            | Mensaje                          |
            | "No tienes cocineros guardados como favoritos." |
            | "Tu lista de favoritos está vacía."             |
            | "Explora y marca a tus chefs favoritos."        |
