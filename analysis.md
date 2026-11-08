# Technical Analysis of Windows Logs

## 1. Introduction

During this lab, Windows Security Event Logs were analyzed to investigate failed authentication attempts and understand how to identify potential brute-force patterns.

## 2. Event Analysis

Two main events from the Windows Security Log were examined:

- **Event 4624:** Successful logon.
- **Event 4625:** Failed logon.

During the investigation, an Event 4625 related to the test account `SOC_LAB_TEST` was identified.

## 3. Error Code Analysis

The recorded event contained the following codes:

- `0xC000006D`: Generic authentication failure.
- `0xC000006A`: Incorrect password.

These codes indicate that Windows rejected the authentication attempt due to incorrect credentials.

## 4. Suspicious Activity Analysis

One failed logon attempt against the `SOC_LAB_TEST` account was identified.

The detection script uses a threshold of five or more failed logon attempts within a 15-minute window.

During the investigation, this threshold was not reached. Therefore, no pattern matching the brute-force criteria defined in the lab was detected.

## 5. Conclusion

The analysis provided an understanding of how Windows records authentication attempts and how PowerShell can be used to automate the detection of potentially suspicious activity.

There was insufficient evidence to confirm a brute-force attack.