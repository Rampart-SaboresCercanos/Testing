Feature: US-06 - Búsqueda Personalizada de Platos por Preferencias Dietéticas
    Scenario: Aplicar Filtros de Preferencias Dietéticas
        Given que el usuario se encuentra en la página de publicaciones del día
        When seleccione filtros en la barra de búsqueda
        Then el sistema debe filtrar las publicaciones del día para solo mostrar aquellas que coincidan con dichos filtros

        Examples:
        | Preferencia Dietética |
        | Vegetariano           |
        | Vegano                |
        | Sin Gluten            |

    Scenario: Limpiar Filtros de Preferencias Dietéticas
        Given que el usuario ha aplicado filtros de preferencias dietéticas y restricciones alimentarias en la barra de búsqueda
        When el usuario haga clic en el botón para limpiar los filtros
        Then el sistema debe eliminar todos los filtros aplicados y mostrar nuevamente todas las publicaciones del día sin restricciones