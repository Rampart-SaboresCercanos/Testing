Feature: US-23 - Mostrar Mensaje de Bienvenida
    Scenario: Mensaje de bienvenida en la vista Home
        Given que el usuario ha accedido a la vista Home
        When se carga la página
        Then el sistema debe mostrar un mensaje de bienvenida que incluya el nombre del usuario y una invitación a explorar los platos

        Examples:
            | Nombre del Usuario  | Mensaje de Bienvenida                                           |
            | Valentina Gómez     | "¡Bienvenida, Valentina! Explora nuestros deliciosos platos." |
            | Marco Ruiz          | "¡Hola, Marco! Te invitamos a descubrir nuestra variedad de platos." |
            | Sofía Herrera       | "¡Bienvenida, Sofía! Disfruta explorando las opciones culinarias que tenemos para ti." |
