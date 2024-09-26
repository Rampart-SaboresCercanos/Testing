Feature: US30 - Seguimiento de Nutrientes
    Scenario: Visualizar el desglose de nutrientes consumidos
        Given que el usuario ha ingresado sus [comidas del día]
        When el sistema calcula el [desglose de nutrientes] consumidos
        Then el sistema muestra el [desglose de nutrientes] detallado al usuario.

        Examples:
            | [comidas del día]           | [desglose de nutrientes]                                  |
            | avena, ensalada, pollo       | 500 kcal, 30g proteínas, 20g grasas, 50g carbohidratos    |
            | batido de frutas, tofu       | 400 kcal, 25g proteínas, 10g grasas, 60g carbohidratos    |
            | pescado, arroz, verduras     | 600 kcal, 40g proteínas, 15g grasas, 55g carbohidratos    |

    Scenario: Ofrecer recomendaciones de ajuste en el plan alimenticio
        Given que el usuario ha ingresado sus comidas y no ha alcanzado sus [objetivos nutricionales]
        When el usuario visualiza su [progreso nutricional]
        Then el sistema ofrece recomendaciones para ajustar el [plan alimenticio].

        Examples:
            | [objetivos nutricionales]    | [progreso nutricional]     | [recomendaciones]                       |
            | perder peso                  | excedido en carbohidratos  | reducir carbohidratos y aumentar fibras |
            | aumentar masa muscular        | falta de proteínas         | añadir más proteínas y grasas saludables|
            | mantener peso                 | equilibrado                | mantener la dieta actual                |
