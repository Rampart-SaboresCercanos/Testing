Feature: US-45 - Roles y Permisos Basados en Roles de Usuario
    Scenario: Acceso restringido según roles y permisos
        Given que el usuario tiene un rol específico asignado
        When intente acceder a una funcionalidad restringida
        Then el sistema debe permitir o denegar el acceso en función de los permisos de su rol

        Examples:
            | Rol        | Funcionalidad | Permiso |
            | Administrador | Reportes    | Permitido  |
            | Usuario    | Configuración | Denegado  |
            | Editor     | Publicaciones | Permitido |
