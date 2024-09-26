Feature: US30 - Seguimiento de Nutrientes

    Scenario: Crear registro de comidas del día
        Given que el usuario quiere registrar sus [comidas del día]
        When el usuario ingresa las comidas y nutrientes
        Then el sistema guarda las [comidas del día] en su registro personal.

        Examples:
            | [comidas del día]           | [nutrientes]                                   |
            | avena, ensalada, pollo       | 500 kcal, 30g proteínas, 20g grasas, 50g carbohidratos    |
            | batido de frutas, tofu       | 400 kcal, 25g proteínas, 10g grasas, 60g carbohidratos    |

    Scenario: Leer desglose de nutrientes consumidos
        Given que el usuario ha ingresado sus [comidas del día]
        When el sistema calcula el [desglose de nutrientes] consumidos
        Then el sistema muestra el [desglose de nutrientes] detallado al usuario.

        Examples:
            | [comidas del día]           | [desglose de nutrientes]                                  |
            | avena, ensalada, pollo       | 500 kcal, 30g proteínas, 20g grasas, 50g carbohidratos    |
            | batido de frutas, tofu       | 400 kcal, 25g proteínas, 10g grasas, 60g carbohidratos    |

    Scenario: Actualizar registro de comidas del día
        Given que el usuario ya ha ingresado sus [comidas del día]
        When el usuario modifica las [comidas del día] o los nutrientes
        Then el sistema actualiza el [registro de nutrientes] con los cambios.

        Examples:
            | [comidas del día]           | [nutrientes actualizados]                                 |
            | avena, ensalada, pollo       | 550 kcal, 35g proteínas, 25g grasas, 60g carbohidratos    |
            | batido de frutas, tofu       | 450 kcal, 30g proteínas, 15g grasas, 70g carbohidratos    |

    Scenario: Eliminar comidas del registro
        Given que el usuario quiere eliminar una [comida del día]
        When el usuario selecciona una comida para eliminar
        Then el sistema actualiza el registro eliminando la comida seleccionada.

        Examples:
            | [comida eliminada]          |
            | avena                      |
            | batido de frutas            |
