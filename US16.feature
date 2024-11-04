Feature: US-16 - Filtración de Pedidos por Intervalo de Fechas
    Scenario: Filtrar Pedidos por Intervalo de Fechas con Resultados
        Given que el usuario está en la sección "Mis pedidos"
        When seleccione un intervalo de fechas del 1 de enero al 31 de enero
        Then el sistema debe mostrar solo los pedidos realizados durante ese período

        Examples:
        | Fecha Inicio | Fecha Fin   |
        | 2024-01-01   | 2024-01-31  |

    Scenario: Filtrar Pedidos sin Resultados en el Intervalo de Fechas
        Given que el usuario está en la sección "Mis pedidos"
        When seleccione un intervalo de fechas sin pedidos realizados
        Then el sistema no debe mostrar pedidos en ese rango de fechas
        
        Examples:
        | Fecha Inicio | Fecha Fin   |
        | 2024-02-01   | 2024-02-28  |