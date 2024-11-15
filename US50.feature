Feature: US-50 - Control de Acceso Basado en Atributos (ABAC)
    Scenario: Permisos basados en atributos específicos
        Given que el administrador asigna permisos basados en atributos del usuario
        When un usuario intente acceder a una funcionalidad
        Then el sistema debe permitir o denegar el acceso en función de sus atributos configurados

        Examples:
            | Usuario       | Atributo   | Funcionalidad | Permiso |
            | Juan Torres   | Marketing  | Reportes      | Permitido |
            | Ana Gómez     | Ventas     | Configuración | Denegado |
            | Luis Rivas    | IT         | Seguridad     | Permitido |
