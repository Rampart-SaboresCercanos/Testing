Feature: US-44 - Autenticación de Usuarios con Multi-Factor Authentication (MFA)
    Scenario: Habilitar MFA en la cuenta
        Given que el usuario ha accedido a su cuenta
        When habilite MFA en la configuración de seguridad
        Then el sistema debe permitirle seleccionar un método de autenticación secundaria como SMS o una aplicación de autenticación

        Examples:
            | Usuario          | Método de Autenticación |
            | Juan Pérez       | SMS                     |
            | Ana Ramírez      | App Autenticación       |
            | María López      | SMS                     |
