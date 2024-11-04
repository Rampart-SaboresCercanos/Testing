Feature: US-28 - Auditoría y Monitoreo de Seguridad del Sistema
    Scenario: Detección de Amenazas
        Given que el administrador del sistema está en el panel de monitoreo
        When se detecte una actividad sospechosa en la plataforma
        Then debe recibir una alerta en tiempo real
        And tener acceso a detalles sobre la actividad para tomar medidas

        Examples:
            | Actividad Sospechosa           | Detalles de la Actividad               |
            | Intento de inicio de sesión fallido | IP: 192.168.1.1, Hora: 10:30 AM     |
            | Acceso no autorizado a datos sensibles | Usuario: Juan Pérez, Fecha: 11/04/2024 |

    Scenario: Auditoría Periódica
        Given que se programó una auditoría de seguridad
        When el administrador ejecute la auditoría
        Then el sistema debe generar un informe que detalle las vulnerabilidades encontradas
        And las recomendaciones para mejorar la seguridad

        Examples:
            | Vulnerabilidad Encontrada          | Recomendación                  |
            | Contraseña débil en el usuario admin | Implementar requisitos de complejidad de contraseña |
            | Falta de cifrado en la base de datos | Implementar encriptación para datos sensibles          |
