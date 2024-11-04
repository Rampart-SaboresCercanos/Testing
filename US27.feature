Feature: US-27 - Gestión Segura de Transacciones Financieras
    Scenario: Ver Resumen de Transacción Reciente
        Given que un cocinero ha completado una transacción con un cliente
        When el cocinero revise la sección de pagos en la plataforma
        Then debe ver un resumen de la transacción, incluyendo el monto recibido, la fecha y el estado del pago

        Examples:
        | Monto   | Fecha       | Estado   |
        | $100.00 | 2024-11-04  | Recibido |

    Scenario: Generar Reportes Financieros
        Given que un cocinero quiere analizar su desempeño financiero
        When accede a la herramienta de informes financieros en la plataforma
        Then debe poder generar informes personalizados sobre sus ventas, ingresos y tendencias de pago a lo largo del tiempo
        
        Examples:
        | Rango de Fecha       | Tipo de Informe |
        | Octubre 2024         | Ventas Mensuales|
        | 01/11/2024-04/11/2024| Transacciones   |