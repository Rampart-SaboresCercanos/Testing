Feature: US-20 - Editar Recetas
    Scenario: Modificar Receta Publicada
        Given que el cocinero está en la vista de "Mis recetas"
        When selecciona una receta y hace clic en "Editar"
        And realiza cambios en los detalles de la receta
        And hace clic en "Guardar"
        Then el sistema debe actualizar la receta en la base de datos
        And debe mostrar un mensaje de confirmación de que la receta ha sido actualizada exitosamente
        
        Examples:
        | Campo            | Valor Anterior      | Nuevo Valor       |
        | Ingredientes     | 2 tazas de azúcar   | 1 taza de azúcar  |
        | Instrucciones    | Hornear 30 minutos  | Hornear 25 minutos|