Feature: US-02 - Proceso de Registro Eficiente
    Scenario: Registro Rápido en la Landing Page
        Given que un [visitante] decide registrarse
        When haga clic en el [botón de registro]
        Then debe ser redirigido a un [formulario] simple y fácil de completar que no requiera más de tres pasos

        Examples:
            | Visitante       | formulario |
            | Valentina Gómez | "Ingresa tu nombre completo y correo electrónico para registrarte." |
            | Marco Ruiz      | "Crea una contraseña segura y confirma tu correo para finalizar el registro." |
            | Sofía Herrera   | "Inicia sesión con tu cuenta de Google o Facebook para un registro más rápido." |

    Scenario: Confirmación de Registro
        Given que un [visitante] ha completado el registro
        When envíe su información
        Then debe recibir un [mensaje de confirmación] que indique que su cuenta ha sido creada exitosamente y que puede iniciar sesión de inmediato

        Examples:
            | Visitante       | Mensaje de confirmacion |
            | Valentina Gómez | "Tu cuenta ha sido creada con éxito. ¡Bienvenido a Sabores Cercanos!" |
            | Marco Ruiz      | "Hemos enviado un enlace de verificación a tu correo. Por favor, verifica tu cuenta." |
            | Sofía Herrera   | "Has completado el registro. Ahora puedes acceder a todas las funciones de la plataforma." |