Feature: US-32 - Página de Favoritos
    Scenario: Mostrar favoritos guardados
        Given que el usuario ha guardado recetas y/o cocineros como favoritos
        When acceda a la página de "Favoritos" desde el menú principal
        Then el sistema debe mostrar una lista con las recetas y cocineros marcados como favoritos

        Examples:
            | Favoritos Guardados               |
            | Tarta de Manzana                  |
            | Pollo al Horno                    |
            | Chef Juan Pérez                   |
            | Chef Ana García                   |

    Scenario: Filtrar entre recetas y cocineros
        Given que el usuario tiene favoritos tanto de recetas como de cocineros
        When acceda a la página de "Favoritos"
        Then el sistema debe permitirle filtrar entre "Recetas" y "Cocineros" para facilitar su navegación

        Examples:
            | Filtro                  | Resultado Esperado                     |
            | Recetas                | Tarta de Manzana, Pollo al Horno     |
            | Cocineros             | Chef Juan Pérez, Chef Ana García     |
