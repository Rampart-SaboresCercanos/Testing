Feature: US03 - Visualización de Reseñas
Scenario: Ver reseñas antes de hacer un pedido
    Given que el usuario quiere asegurarse de que el cocinero ofrece comida de calidad
    When el usuario revisa las reseñas y calificaciones de otros clientes
    Then el aplicativo muestra de forma clara y detallada las opiniones y calificaciones
    And el usuario puede tomar una decisión informada.

    Examples:
      | cocinero       | calificación_promedio |
      | Chef Juan      | 4.8                   |
      | Chef Mariana   | 4.5                   |
      | Chef Roberto   | 4.9                   |

  Scenario: Comparar cocineros antes de elegir
    Given que el usuario tiene varias opciones de cocineros y quiere elegir la mejor
    When el usuario compara las reseñas y perfiles de varios cocineros
    Then el aplicativo facilita la comparación lado a lado
    And ayuda al usuario a seleccionar el cocinero que mejor se ajusta a sus expectativas.

    Examples:
      | cocinero_1     | cocinero_2     | calificación_1 | calificación_2 |
      | Chef Juan      | Chef Mariana   | 4.8            | 4.5            |
      | Chef Roberto   | Chef Juan      | 4.9            | 4.8            |
      | Chef Mariana   | Chef Roberto   | 4.5            | 4.9            |