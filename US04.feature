Feature: US04 - Visualización de la información nutricional          
    Scenario: Mostrar información nutricional detallada. 
        Given que un usuario ha seleccionado un [plato del menú],  
        When el usuario accede a la página de detalles del plato,  
        Then el sistema mostrará la información nutricional completa del plato, que incluye [calorías], [proteínas], [grasas] y [carbohidratos].

        Examples:
            | [plato del menú]    | [calorías] | [proteínas] | [grasas] | [carbohidratos] |
            | Pizza de queso      | 800        | 25g         | 35g      | 80g             |
            | Ensalada de pollo   | 400        | 30g         | 15g      | 40g             |
            | Sándwich vegano     | 300        | 10g         | 12g      | 45g             |

    Scenario: Advertencia por exceso de calorías o nutrientes. 
        Given que el usuario está revisando la información nutricional de un [plato del menú], 
        When el valor de [calorías] o de ciertos nutrientes excede las recomendaciones diarias,  
        Then el sistema mostrará una [advertencia] sugiriendo, mediante una [acción sugerida] revisar la selección o elegir platos más saludables.

        Examples:
            | [plato del menú]    | [calorías] | [advertencia]           | [acción sugerida]             |
            | Hamburguesa doble   | 1200       | Exceso de calorías      | Sugerir platos más saludables |
            | Pasta carbonara     | 900        | Exceso de grasas        | Revisar selección             |
            | Batido de chocolate | 600        | Exceso de azúcar        | Sugerir opciones más ligeras  |
