Feature: US-21 - Eliminar Recetas
    Scenario: Eliminar una Receta Publicada
        Given que el cocinero está en la vista de "Mis recetas"
        When selecciona una receta y hace clic en "Eliminar"
        And confirma la acción en el mensaje de advertencia
        Then el sistema debe eliminar la receta de la base de datos
        And debe mostrar un mensaje de confirmación de que la receta ha sido eliminada exitosamente
        
        Examples:
        | Nombre de Receta          | Estado Antes   | Estado Después |
        | Tarta de Manzana          | Publicada     | Eliminada      |
        | Ensalada de Quinoa        | Publicada      | Eliminada      |