Feature: TS-34 - Implementar Landing Page
    Scenario: Visualizar Información en la Landing Page
        Given que el diseño de la landing page está aprobado
        When el usuario accede a la página principal
        Then debería poder ver información sobre la plataforma y un botón para descargar la app o acceder a la versión web

        Examples:
            | Usuario           | Salida Esperada                                           |
            | Valentina Gómez   | Ver información sobre la plataforma y botón de descarga |
            | Marco Ruiz        | Ver información sobre la plataforma y botón de acceso    |
            | Sofía Herrera     | Ver información sobre la plataforma y ambos botones      |
