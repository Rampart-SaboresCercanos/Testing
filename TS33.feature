Feature: TS-33 - Configurar Entorno de Desarrollo

    Scenario: Configuración del Entorno de Desarrollo
        Given que el desarrollador tiene acceso al repositorio del proyecto
        When sigue las instrucciones de configuración
        Then debería poder ejecutar la aplicación localmente
        
        Examples:
            | Desarrollador      |
            | Juan Pérez         |
            | Ana Martínez       |
            | Carlos Fernández   |