Feature: TS-43 - Optimizar el Rendimiento de la Carga de Imágenes
    Scenario: Cargar Imágenes de Forma Eficiente
        Given que el usuario accede a una publicación con imágenes
        When la página carga
        Then las imágenes deben cargarse de manera rápida y eficiente, utilizando técnicas como lazy loading y compresión de imágenes

        Examples:
        | Tipo de Optimización | Resultado Esperado |
        | Lazy Loading         | Carga más rápida   |
        | Compresión           | Mejor rendimiento  |