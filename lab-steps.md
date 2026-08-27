# Technical Runbook & Environment Setup

This document outlines the step-by-step configuration, deployment, and operation of the simulated corporate IT environment. It serves as visual proof of the automated identity provisioning, endpoint management, and ticketing workflows.

---

## Phase 1: Identity Automation (Entra ID & PowerShell)
**Objective:** Automate the creation and licensing of users using the Microsoft Graph API to eliminate manual onboarding errors.

### 1. Script Execution
*   Connected to the Microsoft Graph API with the required scopes (`User.ReadWrite.All`).
*   Executed [`EntraUserCreation.ps1`](./EntraUserCreation.ps1) to parse [`sample-users.csv`](./sample-users.csv) to generate temporary passwords and create the user objects in the cloud.

<img width="684" height="144" alt="terminal" src="https://github.com/user-attachments/assets/a9f54df0-2222-44d5-be2d-d9bbafe69872" />

### 2. Entra ID Verification
*   Verified that the users successfully populated within the Entra ID admin center.
  
<img width="1624" height="421" alt="Entra-Users" src="https://github.com/user-attachments/assets/fa2ae37a-7e9e-4513-9678-fa8266ce270e" />

---

## Phase 2: Endpoint Management (Microsoft Intune)
**Objective:** Manage a remote Windows 11 endpoint, enforce security compliance, and push required corporate software silently.

### 1. Windows 11 Device Enrolment
*   Enrolled a Windows 11 virtual machine into Entra ID using a provisioned user account.
*   Verified successful enrolment within the virtual machine.

<img width="471" height="274" alt="Win-Connection" src="https://github.com/user-attachments/assets/5006a616-f99a-419f-ba08-7ed6946e5ba5" />

### 2. Policy & Application Deployment
*   Created and assigned a baseline compliance policy of requiring BitLocker
*   Configured a required software deployment to push Microsoft Office silently to the enrolled endpoints over-the-air.

<img width="1323" height="305" alt="image" src="https://github.com/user-attachments/assets/ec9c87bd-b5a7-455a-bab1-afbff471f29a" />
<br>
<img width="1685" height="376" alt="image" src="https://github.com/user-attachments/assets/5fcca1e6-22b1-4bc7-8ef5-fb2bfdc0c176" />

---

## Phase 3: IT Service Management (Jira)
**Objective:** Track, manage, and resolve simulated end-user issues originating from the newly onboarded environment.

### 1. Ticket Intake & Triage
*   Simulated standard L1/L2 helpdesk tickets representing issues from newly onboarded users.
*   Categorised incidents logically (e.g., Password Reset, Software Deployment, Multi-Factor Authentication).

### 2. SLA Tracking & Resolution

*   **Ticket 1 (MFA Reset):** Resolved an issue where a user lost access to their authenticator app. Triggered the "Require re-register MFA" action directly within Entra ID.

<img width="640" height="757" alt="Ticket1" src="https://github.com/user-attachments/assets/9961f0a1-4349-497f-8850-b9cabba251f7" />

*   **Ticket 2 (Account Access):** Executed a secure password reset via the Entra ID admin center and provided temporary credentials to the end-user.

<img width="640" height="757" alt="Ticket2" src="https://github.com/user-attachments/assets/f4c8a9dc-cde7-48e8-9753-e4e2e8e28741" />

*   **Ticket 3 (Remote Software Deployment):** Addressed a missing software request by remotely pushing the Microsoft 365 Office Suite to the user's device via Intune synchronisation.

<img width="640" height="757" alt="Ticket3" src="https://github.com/user-attachments/assets/94a377e1-41b9-4fc5-9a70-c53e396997aa" />

*All tickets were documented with detailed resolution notes and closed.*
