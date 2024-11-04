Feature: US-17 - Creación Perfil Personalizado
    Scenario: Mostrar perfil personalizado del usuario
        Given que el usuario ha accedido a la vista de “Mi perfil”
        When se carga la página de perfil
        Then el sistema debe mostrar la imagen de perfil del usuario, los datos personales guardados (nombre, correo electrónico, dirección, etc.), y las preferencias alimentarias (restricciones dietéticas o comidas favoritas)

        Examples:
            | Usuario           | Imagen de Perfil        | Nombre          | Correo Electrónico        | Dirección                | Preferencias Alimentarias                     |
            | Valentina Gómez   | "valentina_perfil.jpg" | Valentina Gómez | valentina@example.com     | Calle Falsa 123, Lima   | Sin gluten, Vegetariana                     |
            | Marco Ruiz        | "marco_perfil.jpg"     | Marco Ruiz      | marco@example.com         | Av. Principal 456, Lima  | Sin lácteos, Comidas picantes               |
            | Sofía Herrera     | "sofia_perfil.jpg"     | Sofía Herrera   | sofia@example.com         | Calle Secundaria 789, Lima | Sin frutos secos, Pescetariana             |
