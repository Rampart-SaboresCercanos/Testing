Feature: US-29 - Escalabilidad y Rendimiento de la Plataforma
    Scenario: Manejo de Aumento de Usuarios Durante una Promoción
        Given que se anticipa un aumento significativo en el número de usuarios durante una promoción
        When se inicie la promoción
        Then la plataforma debe manejar la carga adicional sin disminuir la velocidad de respuesta ni afectar la experiencia del usuario

        Examples:
        | Número de Usuarios Concurrentes | Rendimiento   |
        | 5000                            | Estable       |
        | 10000                           | Estable       |

    Scenario: Optimización de Recursos
        Given que el administrador del sistema está revisando el rendimiento de la plataforma
        When identifique un uso ineficiente de recursos
        Then debe poder implementar ajustes en la infraestructura para optimizar el rendimiento y la escalabilidad
        
        Examples:
        | Recurso | Estado Actual | Optimización |
        | CPU     | 80% Uso       | Optimizado   |
        | RAM     | 90% Uso       | Optimizado   |