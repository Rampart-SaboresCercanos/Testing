Feature: US20 - Filtrar Recetas
    Scenario: Filtrar recetas por un criterio
        Given que el usuario está buscando una receta
        When selecciona filtros como "desayuno" o "fácil"
        Then la plataforma muestra las recetas que coinciden con esos filtros

        Examples:
            | filtro        | resultado               |
            | desayuno      | Panqueques, Avena       |
            | fácil         | Ensalada, Sándwich      |

    Scenario: Filtrar recetas por múltiples criterios
        Given que el usuario desea refinar la búsqueda
        When selecciona múltiples filtros como "sin gluten" y "menos de 30 minutos"
        Then la plataforma muestra recetas que coincidan con todos esos criterios

        Examples:
            | filtros                       | resultado                        |
            | sin gluten, menos de 30 min   | Ensalada de Quinoa, Batido Verde |
            | vegetariano, menos de 30 min  | Sopa de Tomate, Ensalada Verde   |
