Feature: US15 - Programación de pedidos    

    Scenario: Agendar entrega para una fecha futura
        Given que el usuario selecciona una fecha futura
        When confirma el pedido
        Then el sistema debe agendar la entrega para esa fecha

        Examples:
        | Usuario           | Fecha seleccionada  | Hora seleccionada |
        | José              | 2024-10-15          | 1:00 p.m.         |
        | María             | 2024-11-02          | 7:30 p.m.         |
        | Carlos            | 2024-09-30          | 12:00 p.m.        |
    
    
    Scenario: Sugerir una nueva fecha si el cocinero no está disponible
        Given que el cocinero no está disponible para la fecha seleccionada
        When el usuario intente programar
        Then el sistema debe sugerir una nueva fecha

        Examples:
        | Usuario           | Fecha seleccionada  | Fecha sugerida    |
        | José              | 2024-10-15          | 2024-10-16        |
        | Ana               | 2024-11-02          | 2024-11-03        |
        | Pedro             | 2024-09-30          | 2024-10-01        |