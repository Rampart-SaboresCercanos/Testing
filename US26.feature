Feature: US-26 - Verificación de Identidad de Cocineros
    Scenario: Enviar Documentación para Verificación
        Given que un cocinero se ha registrado en la plataforma
        When envía la documentación requerida para la verificación de identidad
        Then el sistema debe revisar la documentación y verificar la identidad del cocinero
        And el cocinero debe recibir una notificación de aprobación o rechazo dentro de un plazo determinado
        
        Examples:
        | Documentación Enviada | Resultado  |
        | Completa              | Aprobado   |
        | Incompleta            | Rechazado  |

    Scenario: Visualizar Indicador de Identidad Verificada
        Given que un usuario está visualizando el perfil de un cocinero
        When el cocinero ha pasado el proceso de verificación de identidad
        Then el sistema debe mostrar un indicador visual en el perfil del cocinero (por ejemplo, un ícono de verificación)
        And el usuario debe poder hacer clic en el ícono para obtener más información sobre el proceso de verificación