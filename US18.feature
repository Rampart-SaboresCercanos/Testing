Feature: US-18 - Edición de Perfil de Usuario
    Scenario: Actualizar Imagen de Perfil
        Given que el usuario está en la vista de perfil
        When hace clic en el botón de "Guardar" y selecciona una nueva imagen de perfil
        Then el sistema debe actualizar la imagen de perfil con la nueva imagen seleccionada

        Examples:
        | Imagen Actualizada       |
        | nueva_imagen_perfil.jpg  |

    Scenario: Editar Datos Personales
        Given que el usuario está en la vista de perfil
        When modifica sus datos personales (ej. nombre o dirección) y hace clic en el botón de "Guardar"
        Then el sistema debe actualizar los datos personales en la base de datos y confirmar la actualización

        Examples:
        | Campo Modificado | Valor Actualizado |
        | Nombre           | Juan Pérez        |
        | Dirección        | Calle Falsa 123   |