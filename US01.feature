Feature: US-01 - Inicio de "Sabores Cercanos"
    Scenario: Mensaje Informativo en la Landing Page
        Given que un [visitante] llega a la landing page
        When visualice la sección introductoria de "Sabores Cercanos"
        Then debe encontrar un [mensaje] claro y conciso que explique qué es la plataforma y cómo puede beneficiarlo

        Examples:
            | Visitante       | Mensaje |
            | Valentina Gómez | "Sabores Cercanos" conecta a los amantes de la comida con chefs locales que ofrecen platos auténticos y deliciosos, permitiéndote disfrutar de la riqueza culinaria de tu región.|
            | Marco Ruiz      | La plataforma facilita el acceso a una variedad de platos locales, permitiéndote hacer pedidos con facilidad y recibir comida fresca en la comodidad de tu hogar.|
            | Sofía Herrera   | Con recomendaciones adaptadas a tus gustos y preferencias, "Sabores Cercanos" mejora tu experiencia culinaria al brindarte opciones que se ajustan a tu estilo de vida y necesidades dietéticas.|

    Scenario: Ejemplos de Beneficios Destacados
        Given que un [visitante] está leyendo sobre "Sabores Cercanos"
        When vea la lista de beneficios
        Then debe encontrar [ejemplos] específicos de cómo la plataforma mejora la experiencia culinaria y facilita el acceso a platos locales

        Examples:
            | Usuario         | Ejemplo |
            | Valentina Gómez |  La plataforma permite a los usuarios descubrir chefs locales que preparan platos auténticos de su región, lo que enriquece la experiencia gastronómica al disfrutar de recetas tradicionales.|
            | Marco Ruiz      | "Sabores Cercanos" ofrece recomendaciones personalizadas basadas en las preferencias y restricciones dietéticas del usuario, lo que facilita la elección de platos que se adaptan a su estilo de vida.|
            | Sofía Herrera   | Los usuarios pueden realizar pedidos de platos locales con solo unos clics, lo que simplifica el proceso de obtener comidas deliciosas y frescas sin salir de casa.|