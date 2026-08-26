# entra-intune-jira-helpdesk

Simulated corporate IT support environment featuring PowerShell-scripted Entra ID automation, Intune-managed Windows 11 devices, and Jira ticket resolution.

**Business Scenario:** To simulate onboarding and endpoint deployment for an enterprise, while reducing manual provisioning time and enforcing zero-trust compliance standards on remote devices.

---

## Tech Stack & Core Competencies

**Technologies Used:**
*   **Identity & Access:** Microsoft Entra ID, Microsoft Graph API
*   **Endpoint Management:** Microsoft Intune, Windows 11
*   **Automation:** PowerShell
*   **IT Service Management (ITSM):** Jira Service Management

**Core Skills Demonstrated:**
*   **Bulk User Automation:** Scripted onboarding of user accounts, assigning dynamic groups, and generating temporary credentials via Microsoft Graph.
*   **Cloud Endpoint Management (MDM):** Enrolled Windows 11 endpoints, enforced compliance policies, and executed silent over-the-air software deployments.
*   **SLA-Driven Helpdesk Operations:** Managed and resolved end-user incident lifecycles (MFA resets, device sync issues, software requests) within defined response targets.
*   **Audit & Error Tracking:** Generated and analyzed script execution logs to ensure secure and accurate account provisioning.

---

## Environment Workflow

```mermaid
flowchart LR
    A([PowerShell Script<br/>Microsoft Graph API]) --> B[Entra ID<br/>Account Creation]
    B --> C[Microsoft Intune<br/>App & Policy Push]
    C --> D[Windows 11<br/>Endpoint]
    D --> E([Jira Service Management<br/>L1/L2 Support])
```

---

## Repository Map

* [`lab-steps.md`](./lab-steps.md) - The complete documentation containing the step-by-step technical runbook with visual evidence.
* [`EntraUserCreation.ps1`](./EntraUserCreation.ps1) - The primary automation script utilized to interface with the Microsoft Graph SDK for bulk user provisioning.
* [`sample-logs.xml`](./sample-logs.xml) - Execution log demonstrating the script's error handling, output formatting, and audit trail capabilities.
