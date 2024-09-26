Feature: US19 - Publicar Recetas
    Scenario: Subir una receta completa
        Given que el cocinero está autenticado
        When sube una receta con título, ingredientes, instrucciones, y foto
        Then la receta se publicará en la plataforma

        Examples:
            | título             | ingredientes                      | instrucciones          | foto                   |
            | Tarta de Manzana   | Manzanas, azúcar, harina, canela  | Mezclar, hornear       | foto_tarta_manzana.jpg |
            | Sopa de Verduras   | Zanahorias, papas, cebolla        | Hervir, licuar         | foto_sopa_verduras.jpg |

    Scenario: Otros usuarios interactúan con la receta
        Given que el cocinero ha publicado una receta
        When otros usuarios visualizan la receta en el feed de la comunidad
        Then pueden comentarla, calificarla, y guardarla

        Examples:
            | receta              | comentarios  | calificación  | guardada  |
            | Tarta de Manzana    | Excelente    | 5 estrellas   | sí        |
            | Sopa de Verduras    | Muy buena    | 4 estrellas   | no        |
