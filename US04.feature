Feature: US-04 - Sección de Preguntas Frecuentes Accesible
    Scenario: Acceso a la Sección de Preguntas Frecuentes
        Given que un [visitante] tiene dudas antes de registrarse
        When busque información en la landing page
        Then debe encontrar un [enlace] claro y visible a la sección de preguntas frecuentes

        Examples:
            | Visitante       | enlace |
            | Valentina Gómez | "¿Tienes preguntas? Visita nuestra -Sección de Preguntas Frecuentes- para más información." |
            | Marco Ruiz      | "Encuentra respuestas rápidas en nuestra -FAQ- y resuelve tus dudas al instante." |
            | Sofía Herrera   | "Explora nuestra -Página de Preguntas Frecuentes- para obtener más detalles sobre cómo funciona 'Sabores Cercanos'." |

    Scenario: Resolución de Dudas
        Given que un [visitante] está leyendo la sección de preguntas frecuentes
        When encuentre una pregunta relevante a su situación
        Then debe leer una [respuesta] clara y concisa que resuelva su duda

        Examples:
            | Visitante       | respuesta |
            | Valentina Gómez | "Puedes registrarte haciendo clic en el botón de registro en la parte superior de la página." |
            | Marco Ruiz      | "Sí, puedes modificar tu pedido dentro de un plazo de 10 minutos después de la confirmación." |
            | Sofía Herrera   | "Aceptamos tarjetas de crédito, débito y pagos a través de plataformas como PayPal." |