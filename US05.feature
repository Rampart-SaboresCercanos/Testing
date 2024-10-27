Feature: US-05 - Política de Privacidad Clara
    Scenario: Acceso a la Política de Privacidad
        Given que un [visitante] está revisando la landing page
        When busque información sobre la seguridad de sus datos personales
        Then debe encontrar un [enlace] visible a la política de privacidad

        Examples:
            | Visitante       | enlace |
            | Valentina Gómez | "Tu privacidad es importante para nosotros. Consulta nuestra _Política de Privacidad_ para más información." |
            | Marco Ruiz      | "¿Preocupado por tus datos? Revisa nuestra _Política de Privacidad_ para conocer cómo te protegemos." |
            | Sofía Herrera   | "Infórmate sobre cómo manejamos tu información en nuestra _Política de Privacidad_." |

    Scenario: Comprensión de la Política de Privacidad
        Given que un [visitante] lee la política de privacidad
        When revise las secciones sobre la recopilación y uso de datos
        Then debe ver un [mensaje] claro de cómo se protegerán sus datos y cómo se utilizarán

        Examples:
            | Visitante       | mensaje |
            | Valentina Gómez | "Recopilamos datos personales como tu nombre y correo electrónico para mejorar tu experiencia en la plataforma." |
            | Marco Ruiz      | "Utilizamos tus datos para procesar pedidos y enviarte actualizaciones sobre tu cuenta y promociones." |
            | Sofía Herrera   | "Nos comprometemos a no vender ni compartir tus datos personales con terceros sin tu consentimiento explícito." |