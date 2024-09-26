Feature: US16 - Métodos de pago    

    Scenario: Procesar pago de manera segura al seleccionar tarjeta de crédito
        Given que el usuario selecciona tarjeta de crédito
        When confirma el pago
        Then el sistema debe procesarlo de manera segura

        Examples:
        | Usuario           | Tarjeta seleccionada  | Monto del pago |
        | José              | Visa                  | $50.00         |
        | María             | MasterCard            | $120.50        |
        | Carlos            | American Express      | $75.25         |
    
    
    Scenario: Mostrar instrucciones de pago al seleccionar transferencia bancaria
        Given que el usuario selecciona una transferencia bancaria
        When seleccione esta opción
        Then el sistema debe mostrar las instrucciones de pago correspondientes

        Examples:
        | Usuario           | Banco seleccionado     | Monto del pago |
        | José              | Banco de Lima          | $50.00         |
        | Ana               | Banco Central          | $200.00        |
        | Pedro             | Banco Continental      | $300.75        |