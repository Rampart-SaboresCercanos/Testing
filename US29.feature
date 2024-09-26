Feature: US29 - Creación de Planes Alimenticios Personalizados
    Scenario: Generar un plan alimenticio personalizado
        Given que el usuario ha ingresado sus [preferencias] y [objetivos nutricionales]
        When el sistema genera un [plan alimenticio] basado en esos criterios
        Then el sistema presenta el [plan alimenticio] ajustado a las preferencias y objetivos del usuario.

        Examples:
            | [preferencias]             | [objetivos nutricionales] | [plan alimenticio]                          |
            | vegetariano, sin gluten     | perder peso               | Plan de comidas bajas en calorías          |
            | alto en proteínas, vegano   | aumentar masa muscular     | Plan de comidas altas en proteínas        |
            | bajo en carbohidratos       | mantener peso             | Plan de comidas cetogénicas                |

    Scenario: Modificar un plan alimenticio existente
        Given que el usuario tiene un [plan alimenticio] existente
        When el usuario realiza cambios en [ingredientes] o [cantidades]
        Then el sistema actualiza automáticamente el [plan alimenticio] con los nuevos datos.

        Examples:
            | [plan alimenticio]                          | [ingredientes]                | [cantidades]    |
            | Plan de comidas bajas en calorías          | añadir aguacate               | 1 pieza          |
            | Plan de comidas altas en proteínas         | cambiar pollo a tofu         | 200 gramos        |
            | Plan de comidas cetogénicas                | eliminar arroz                | N/A              |
