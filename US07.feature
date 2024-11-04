Feature: US-07 - Filtrado de Resultados de Búsqueda por Ubicación, Precio y Popularidad
    Scenario: Aplicar Filtros de Ubicación, Precio y Popularidad
        Given que el usuario se encuentra en la página de publicaciones del día
        When aplique filtros de búsqueda relacionados con ubicación, precio y popularidad
        Then el sistema debe mostrar los resultados que coincidan con dichos filtros

        Examples:
        | Ubicación  | Rango de Precio | Popularidad |
        | Cercana    | 10-20          | Alta        |
        | Moderada   | 20-30          | Media       |
        | Distante   | 30-40          | Baja        |

    Scenario: Reiniciar Filtros de Ubicación, Precio y Popularidad
        Given que el usuario ha aplicado filtros de ubicación, precio y popularidad en la barra de búsqueda
        When el usuario haga clic en el botón para reiniciar los filtros
        Then el sistema debe restablecer los resultados, eliminando los filtros y mostrando todas las publicaciones del día sin ningún criterio de ubicación, precio o popularidad