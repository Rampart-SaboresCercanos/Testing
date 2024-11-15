Feature: US-13 - Filtros por Estado de Pedido (Entregados, En proceso y Cancelados)
    Scenario: Filtrar Pedidos por Estado "Pendiente"
        Given que el usuario está en la sección "Mis pedidos"
        When aplique el filtro de estado "Pendiente"
        Then el sistema debe mostrar solo los pedidos que ya han sido entregados

        Examples:
        | Estado del Pedido |
        | Pendiente         |

    Scenario: Filtrar Pedidos por Estado "En preparación"
        Given que el usuario está en la sección "Mis pedidos"
        When aplique el filtro de estado "En preparación"
        Then el sistema debe mostrar solo los pedidos en proceso

        Examples:
        | Estado del Pedido |
        | En preparación    |