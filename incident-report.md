# Incident Report – Windows Authentication Monitoring

## 1. Incident Overview

| Field | Details |
|---|---|
| Incident type | Failed authentication attempt |
| Affected account | `SOC_LAB_TEST` |
| Event ID | 4625 |
| Severity | Informational |
| Status | Closed |
| Environment | Local Windows lab |

## 2. Incident Description

During the analysis of Windows Security Event Logs, one failed logon attempt involving the test account `SOC_LAB_TEST` was identified.

The authentication attempt was rejected because an incorrect password was entered.

## 3. Technical Evidence

The investigation identified the following details:

- **Event ID:** 4625 – Failed logon.
- **Account:** `SOC_LAB_TEST`.
- **Status:** `0xC000006D` – Generic authentication failure.
- **SubStatus:** `0xC000006A` – Incorrect password.
- **Logon Type:** 2 – Interactive logon.
- **Source Address:** `::1` – Local loopback address.

## 4. Detection and Analysis

A PowerShell script was used to analyze failed authentication events.

The detection rule identifies accounts with five or more failed logon attempts within a 15-minute window.

Only one failed attempt was identified during the investigation. The configured detection threshold was not reached.

## 5. Impact Assessment

No evidence of successful unauthorized access or confirmed brute-force activity was identified during this investigation.

The available evidence was limited to one failed authentication attempt in the local lab environment.

## 6. Conclusion

The investigation identified an incorrect-password authentication failure involving the test account.

The activity did not meet the configured brute-force detection threshold.

The incident was documented and closed for educational purposes.