Feature: US-54 - Acceso Basado en el Principio de Menor Privilegio
    Scenario: Permisos mínimos para nuevo usuario
        Given que un usuario es creado con un rol básico
        When acceda al sistema
        Then solo debe ver las opciones esenciales según el principio de menor privilegio

        Examples:
            | Usuario       | Rol        | Opciones Permitidas          |
            | Javier Torres | Básico     | Ver perfil                   |
            | Ana Pérez     | Básico     | Ver perfil                   |
            | Juan Castro   | Avanzado   | Ver perfil, Configuración    |
