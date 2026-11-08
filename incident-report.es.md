# Informe de incidente – Monitorización de autenticación de Windows

## 1. Resumen del incidente

| Campo | Detalles |
|---|---|
| Tipo de incidente | Intento de autenticación fallido |
| Cuenta afectada | `SOC_LAB_TEST` |
| ID del evento | 4625 |
| Severidad | Informativa |
| Estado | Cerrado |
| Entorno | Laboratorio local de Windows |

## 2. Descripción del incidente

Durante el análisis de los registros de seguridad de Windows, se identificó un intento de inicio de sesión fallido relacionado con la cuenta de prueba `SOC_LAB_TEST`.

Windows rechazó el intento de autenticación porque se introdujo una contraseña incorrecta.

## 3. Evidencias técnicas

Durante la investigación se identificaron los siguientes datos:

- **ID del evento:** 4625 – Inicio de sesión fallido.
- **Cuenta:** `SOC_LAB_TEST`.
- **Estado:** `0xC000006D` – Error genérico de autenticación.
- **Subestado:** `0xC000006A` – Contraseña incorrecta.
- **Tipo de inicio de sesión:** 2 – Inicio de sesión interactivo.
- **Dirección de origen:** `::1` – Dirección de loopback local.

## 4. Detección y análisis

Se utilizó un script de PowerShell para analizar los eventos de autenticación fallidos.

La regla de detección identifica cuentas con cinco o más intentos de inicio de sesión fallidos en un intervalo de 15 minutos.

Durante la investigación solo se identificó un intento fallido. Por tanto, no se alcanzó el umbral establecido.

## 5. Evaluación del impacto

Durante esta investigación no se encontraron evidencias de acceso no autorizado exitoso ni de actividad de fuerza bruta confirmada.

Las evidencias disponibles se limitaron a un intento de autenticación fallido en el entorno local del laboratorio.

## 6. Conclusión

La investigación identificó un error de autenticación debido a una contraseña incorrecta en la cuenta de prueba.

La actividad no cumplió el umbral configurado para detectar posibles patrones de fuerza bruta.

El incidente quedó documentado y cerrado con fines educativos.