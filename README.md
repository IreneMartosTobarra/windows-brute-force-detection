# Windows Brute Force Detection & Log Analysis

## Overview

This project focuses on Windows authentication monitoring and the detection of suspicious login activity.

The lab uses Windows Security Event Logs and PowerShell to investigate failed authentication attempts and identify potential brute-force patterns.

## Objectives

- Understand Windows Security Event IDs 4624 and 4625.
- Analyze failed authentication attempts.
- Extract relevant information from Windows event logs.
- Develop a basic PowerShell detection script.
- Understand how brute-force detection works.

## Lab Environment

- Operating System: Windows 10/11
- Tools: Windows Event Viewer and PowerShell
- Log source: Windows Security
- Test account: SOC_LAB_TEST

## Events Analyzed

| Event ID | Description |
|---|---|
| 4624 | Successful logon |
| 4625 | Failed logon |

## Detection Logic

A PowerShell script was developed to identify accounts with five or more failed logon attempts within a 15-minute window.

The script analyzes Event ID 4625 and groups failed attempts by account.

## Findings

One failed login attempt was identified against the test account `SOC_LAB_TEST`.

The failure was caused by an incorrect password (`0xC000006A`).

No brute-force activity was detected during the investigation.

## Repository Structure

- `detection-logic.ps1` — PowerShell detection script.
- `analysis.md` — Technical analysis of the events.
- `incident-report.md` — Incident investigation report.
- `evidence/` — Screenshots collected during the lab.

## Disclaimer

This project was conducted in a controlled local environment for educational purposes. No unauthorized systems were accessed.