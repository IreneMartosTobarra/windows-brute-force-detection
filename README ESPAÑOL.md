# Detección de ataques de fuerza bruta y análisis de registros de Windows

## Descripción del proyecto

Este proyecto se centra en la monitorización de los inicios de sesión de Windows y en la detección de actividades de autenticación sospechosas.

Para ello, se utilizan los registros de seguridad de Windows y PowerShell con el objetivo de investigar intentos de inicio de sesión fallidos e identificar posibles patrones de ataques de fuerza bruta.

## Objetivos

- Comprender los eventos de seguridad de Windows 4624 y 4625.
- Analizar intentos de autenticación fallidos.
- Extraer información relevante de los registros de eventos de Windows.
- Desarrollar un script básico de detección con PowerShell.
- Comprender cómo funciona la detección de ataques de fuerza bruta.

## Entorno del laboratorio

- Sistema operativo: Windows 10/11.
- Herramientas: Visor de eventos de Windows y PowerShell.
- Fuente de registros: Windows Security.
- Cuenta de prueba: `SOC_LAB_TEST`.

## Eventos analizados

| ID del evento | Descripción |
|---|---|
| 4624 | Inicio de sesión correcto |
| 4625 | Inicio de sesión fallido |

## Lógica de detección

Se desarrolló un script de PowerShell para identificar cuentas con cinco o más intentos de inicio de sesión fallidos en un intervalo de 15 minutos.

El script analiza los eventos 4625 y agrupa los intentos fallidos según la cuenta afectada.

## Resultados obtenidos

Durante la investigación se identificó un intento de inicio de sesión fallido contra la cuenta de prueba `SOC_LAB_TEST`.

El intento se produjo por una contraseña incorrecta (`0xC000006A`).

No se detectó actividad que cumpliera el umbral establecido para considerar un posible patrón de fuerza bruta.

## Estructura del repositorio

- `detection-logic.ps1`: script de PowerShell utilizado para la detección.
- `analysis.md`: análisis técnico de los eventos.
- `incident-report.md`: informe de investigación del incidente.
- `evidence/`: capturas de pantalla recopiladas durante el laboratorio.

## Aviso

Este proyecto se ha realizado en un entorno local controlado con fines educativos. No se ha accedido a ningún sistema sin autorización.