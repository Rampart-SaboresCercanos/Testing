Feature: US-25 - Proteger Datos Personales y Financieros con Encriptación
    Scenario: Encriptar datos durante la creación de cuenta
        Given que el usuario está creando una cuenta en la plataforma
        When ingresa su información personal y financiera
        Then el sistema debe encriptar automáticamente estos datos antes de almacenarlos en la base de datos
        And el usuario debe recibir un mensaje de confirmación indicando que su información está protegida

        Examples:
            | Información Personal       | Información Financiera      |
            | Juan Pérez                 | 1234-5678-9012-3456        |
            | Ana Gómez                  | 9876-5432-1098-7654        |

    Scenario: Desencriptar datos al acceder al perfil
        Given que el usuario ha iniciado sesión en su cuenta
        When accede a su perfil y solicita ver su información personal y financiera
        Then el sistema debe desencriptar temporalmente los datos para mostrarlos en la interfaz
        And garantizar que la información se vuelva a encriptar inmediatamente después de la visualización

        Examples:
            | Usuario       | Datos Personales         | Datos Financieros    |
            | Juan Pérez    | Nombre: Juan Pérez      | Tarjeta: ****-****-3456 |
            | Ana Gómez     | Nombre: Ana Gómez       | Tarjeta: ****-****-7654 |
