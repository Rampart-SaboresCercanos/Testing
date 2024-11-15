Feature: US-47 - Recuperación de Contraseña y Verificación de Identidad
    Scenario: Recuperación de contraseña en caso de olvido
        Given que el usuario ha olvidado su contraseña
        When inicie el proceso de recuperación
        Then debe recibir un correo con un enlace seguro para restablecer la contraseña

        Examples:
            | Usuario        | Enlace de Recuperación                   |
            | Pedro Fernández| Enlace seguro enviado a email           |
            | Carmen Ruiz    | Enlace seguro enviado a email           |
            | Luis López     | Enlace seguro enviado a email           |
