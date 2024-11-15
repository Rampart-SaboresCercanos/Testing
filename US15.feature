Feature: US-15 - Filtración de Pedidos por Método de Pago
    Scenario: Filtrar Pedidos por Método de Pago "Tarjeta"
        Given que el usuario está en la sección "Mis pedidos"
        When aplique el filtro por método de pago "Tarjeta"
        Then el sistema debe mostrar solo los pedidos que fueron pagados con tarjeta

        Examples:
        | Método de Pago |
        | Tarjeta        |

    Scenario: Filtrar Pedidos por Método de Pago "Efectivo"
        Given que el usuario está en la sección "Mis pedidos"
        When aplique el filtro por método de pago "Efectivo"
        Then el sistema debe mostrar solo los pedidos que fueron pagados en efectivo
        
        Examples:
        | Método de Pago |
        | Efectivo       |