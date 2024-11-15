Feature: US-08 - Filtrado de Prepublicaciones para Pedidos Anticipados
    Scenario: Aplicar Filtros en Prepublicaciones
        Given que el usuario está en la sección de prepublicaciones
        When ingrese un criterio de filtro (como fecha, tipo de comida, chef, etc.)
        Then el sistema debe mostrar solo las prepublicaciones que coincidan con los criterios ingresados
        
        Examples:
        | Fecha       | Tipo de Comida | Chef       |
        | 2024-11-01  | Mexicana       | Juan Pérez |
        | 2024-11-05  | Italiana       | Ana López  |

    Scenario: Sin Filtros Aplicados en Prepublicaciones
        Given que el usuario no selecciona ningún criterio de filtro
        When realice la búsqueda
        Then el sistema debe mostrar todas las prepublicaciones disponibles