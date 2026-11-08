# Análisis técnico de registros de Windows

## 1. Introducción

Durante este laboratorio se analizaron los registros de seguridad de Windows para investigar intentos de autenticación fallidos y comprender cómo identificar posibles patrones de fuerza bruta.

## 2. Análisis de eventos

Se estudiaron principalmente dos eventos del registro de seguridad:

- **Evento 4624:** inicio de sesión correcto.
- **Evento 4625:** inicio de sesión fallido.

Durante la investigación se encontró un evento 4625 relacionado con la cuenta de prueba `SOC_LAB_TEST`.

## 3. Análisis de códigos de error

El evento registrado contenía los siguientes códigos:

- `0xC000006D`: error genérico de autenticación.
- `0xC000006A`: contraseña incorrecta.

Estos códigos indican que Windows rechazó el intento de autenticación debido a unas credenciales incorrectas.

## 4. Análisis de actividad sospechosa

Se identificó un intento fallido de inicio de sesión contra la cuenta `SOC_LAB_TEST`.

El script desarrollado establece un umbral de cinco o más intentos fallidos en un intervalo de 15 minutos.

Durante la investigación no se alcanzó este umbral, por lo que no se detectó un patrón compatible con el criterio de fuerza bruta definido en el laboratorio.

## 5. Conclusión

El análisis permitió comprender cómo Windows registra los intentos de autenticación y cómo PowerShell puede utilizarse para automatizar la detección de posibles actividades sospechosas.

No se encontraron evidencias suficientes para confirmar un ataque de fuerza bruta.