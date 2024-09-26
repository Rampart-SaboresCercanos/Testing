Feature: US03 - Experiencia Personalizada               
    Scenario: Recomendaciones basadas en pedidos anteriores
        Given que el usuario suele pedir comidas similares cada semana,  
        When el usuario recibe recomendaciones basadas en sus pedidos anteriores,  
        Then el aplicativo sugiere opciones que se alinean con sus preferencias, facilitando la selección de sus comidas habituales.

        Examples:
            | [pedidos anteriores]          | [recomendaciones]             | [frecuencia]    |
            | Pizza de pepperoni             | Pizza de pepperoni, Lasagna   | Semanal         |
            | Ensalada César                 | Ensalada César, Wrap de pollo | Semanal         |
            | Sopa de lentejas               | Sopa de lentejas, Guiso de garbanzos | Quincenal  |

    Scenario: Recomendaciones basadas en preferencias dietéticas
        Given que el usuario tiene [preferencias dietéticas] específicas (por ejemplo, bajo en carbohidratos),  
        When el usuario recibe sugerencias de [platos] que cumplen con sus criterios, según el [tipo de comida] del día,  
        Then el aplicativo presenta opciones personalizadas, ahorrándole tiempo y esfuerzo en la búsqueda de comidas adecuadas.

        Examples:
            | [preferencia dietética]  | [plato recomendado]  | [tipo de comida]     |
            | Bajo en carbohidratos    | Pollo a la plancha   | Plato principal      |
            | Vegetariana              | Ensalada de quinoa   | Almuerzo             |
            | Sin gluten               | Sopa de calabaza     | Entrada              |
