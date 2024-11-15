Feature: US-52 - Delegación de Acceso Temporal
    Scenario: Delegación temporal de acceso
        Given que el usuario desea delegar acceso temporalmente
        When habilite la delegación
        Then el sistema debe permitir la designación de otro usuario y revocar dicho acceso después del tiempo configurado

        Examples:
            | Usuario       | Delegado     | Duración    |
            | José Chávez   | Laura Pérez  | 1 día       |
            | Pedro Ruiz    | Ana Gómez    | 7 días      |
            | María López   | Carlos Díaz  | 3 horas     |
