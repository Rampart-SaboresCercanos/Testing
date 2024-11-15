Feature: US-51 - Verificación de Email al Crear una Nueva Cuenta
    Scenario: Verificación de email tras registro
        Given que el usuario ha creado una cuenta
        When se registre
        Then debe recibir un correo de verificación y completar el proceso para activar su cuenta

        Examples:
            | Usuario      | Estado de Verificación |
            | Carlos Pérez | Email enviado         |
            | Ana Ramírez  | Email enviado         |
            | Mario Gutiérrez | Email enviado      |
