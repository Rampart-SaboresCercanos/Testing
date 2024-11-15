Feature: US-48 - Auditoría de Inicios de Sesión
    Scenario: Visualización del historial de inicio de sesión
        Given que el administrador necesita monitorear actividades
        When acceda al registro de auditoría
        Then debe ver el historial de inicio de sesión de los usuarios con información relevante

        Examples:
            | Usuario      | Fecha             | Ubicación        |
            | Ana Gutiérrez | 2024-11-12 10:45 | Lima, Perú       |
            | Luis García   | 2024-11-13 15:30 | Quito, Ecuador   |
            | María Torres  | 2024-11-13 17:00 | Bogotá, Colombia |
