Feature: US29 - Creación de Planes Alimenticios Personalizados

    Scenario: Crear un plan alimenticio personalizado
        Given que el usuario ha ingresado sus [preferencias] y [objetivos nutricionales]
        When el sistema genera un [plan alimenticio] basado en esos criterios
        Then el sistema guarda y presenta el [plan alimenticio] ajustado a las preferencias y objetivos del usuario.

        Examples:
            | [preferencias]             | [objetivos nutricionales] | [plan alimenticio]                          |
            | vegetariano, sin gluten     | perder peso               | Plan de comidas bajas en calorías          |
            | alto en proteínas, vegano   | aumentar masa muscular     | Plan de comidas altas en proteínas        |
            | bajo en carbohidratos       | mantener peso             | Plan de comidas cetogénicas                |

    Scenario: Leer un plan alimenticio personalizado
        Given que el usuario tiene un [plan alimenticio] existente
        When el usuario quiere revisar su [plan alimenticio]
        Then el sistema muestra el [plan alimenticio] actual basado en sus preferencias y objetivos.

        Examples:
            | [plan alimenticio]                          |
            | Plan de comidas bajas en calorías          |
            | Plan de comidas altas en proteínas         |
            | Plan de comidas cetogénicas                |

    Scenario: Actualizar un plan alimenticio existente
        Given que el usuario tiene un [plan alimenticio] existente
        When el usuario realiza cambios en [ingredientes] o [cantidades]
        Then el sistema actualiza el [plan alimenticio] automáticamente con los nuevos datos.

        Examples:
            | [plan alimenticio]                          | [ingredientes]                | [cantidades]    |
            | Plan de comidas bajas en calorías          | añadir aguacate               | 1 pieza          |
            | Plan de comidas altas en proteínas         | cambiar pollo a tofu         | 200 gramos        |
            | Plan de comidas cetogénicas                | eliminar arroz                | N/A              |

    Scenario: Eliminar un plan alimenticio
        Given que el usuario quiere eliminar un [plan alimenticio] existente
        When el usuario selecciona el plan para eliminar
        Then el sistema borra el [plan alimenticio] del registro.

        Examples:
            | [plan alimenticio]                          |
            | Plan de comidas bajas en calorías           |
            | Plan de comidas altas en proteínas          |
            | Plan de comidas cetogénicas                 |
