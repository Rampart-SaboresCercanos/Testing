Feature: TS-40 - Implementar Perfil del Usuario
    Scenario: Editar Información Personal en el Perfil
        Given que el usuario accede a su perfil
        When selecciona un campo para editar
        Then debería poder modificar su foto, nombre, correo, fecha de nacimiento, direcciones y método de pago preferido

        Examples:
        | Campo         | Nuevo Valor         |
        | Nombre        | Juan Pérez          |
        | Método de Pago| Tarjeta de Crédito  |