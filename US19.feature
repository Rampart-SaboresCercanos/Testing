Feature: US-19 - Crear Recetas
    Scenario: Publicar una Nueva Receta
        Given que el cocinero está en la vista de publicación de recetas
        When ingresa todos los detalles de su receta (incluyendo nombre, ingredientes, instrucciones y tiempo de preparación) y hace clic en "Publicar"
        Then el sistema debe guardar la receta en la base de datos y mostrar un mensaje de confirmación de que la receta se ha publicado exitosamente
        
        Examples:
        | Nombre Receta | Ingredientes            | Tiempo Preparación |
        | Tacos Veganos | Tortillas, Vegetales    | 15 min             |
        | Pizza Margherita | Harina, Queso, Tomate | 20 min             |