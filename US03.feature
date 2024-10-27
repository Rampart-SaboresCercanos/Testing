Feature: US-03 - Visualización de Platos Populares y Reseñas
    Scenario: Sección de Platos Destacados
        Given que un [visitante] está en la landing page
        When busque ejemplos de platos populares
        Then debe encontrar una galería con [imágenes] y [descripciones] de los platos más solicitados

        Examples:
            | Visitante       | images              | descripciones |
            | Valentina Gómez | tacos_de_pollo.png  | "Deliciosos tacos de pollo desmenuzado, servidos con cebolla, cilantro y salsa fresca." |
            | Marco Ruiz      | pasta_alfredo.png   | "Pasta Alfredo cremosa, acompañada de pechuga de pollo a la parrilla y espárragos." |
            | Sofía Herrera   | ensalada_cesar.png  | "Ensalada César clásica con lechuga fresca, crutones dorados y aderezo cremoso." |

    Scenario: Reseñas de Usuarios
        Given que un [visitante] está interesado en la calidad de la comida
        When revise la sección de reseñas
        Then debe poder leer [opiniones] de otros usuarios que destacan la calidad y el sabor de los platos ofrecidos

        Examples:
            | Visitante       | opinions |
            | Valentina Gómez | "Los tacos de pollo son simplemente exquisitos, con un sabor auténtico que los hace irresistibles." |
            | Marco Ruiz      | "La pasta Alfredo es cremosa y deliciosa; cada bocado es una explosión de sabor." |
            | Sofía Herrera   | "La ensalada César es fresca y bien balanceada; los crutones le dan un toque crujiente perfecto." |