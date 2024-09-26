Feature: US05 - Programacion de entrega               
    Scenario: Programación para recibir la comida después del trabajo 
        Given que el usuario tiene un horario de trabajo ocupado y quiere cenar a una hora específica
        When el usuario programa la entrega para que llegue justo después de que termine su jornada laboral
        Then el aplicativo asegura que la comida sea entregada puntualmente, sin interrupciones en su rutina diaria

        Examples:
        | Usuario           | Horario de trabajo | Hora programada de entrega |
        | José              | 9:00 a.m. - 6:00 p.m. | 6:15 p.m.                  |
        | María             | 8:00 a.m. - 5:00 p.m. | 5:10 p.m.                  |
        | Carlos            | 10:00 a.m. - 7:00 p.m. | 7:05 p.m.                  |
    
    
    Scenario: Entrega programada durante un descanso corto
        Given que el usuario tiene un breve periodo de descanso para comer
        When el usuario programa la entrega para que coincida con el inicio de su descanso
        Then el aplicativo gestiona la entrega para que llegue en el momento preciso, permitiéndole disfrutar de su comida sin retrasos

        Examples:
        | Usuario           | Inicio del descanso | Hora programada de entrega |
        | José              | 12:30 p.m.          | 12:30 p.m.                 |
        | Ana               | 3:00 p.m.           | 3:00 p.m.                  |
        | Pedro             | 11:45 a.m.          | 11:45 a.m.                 |