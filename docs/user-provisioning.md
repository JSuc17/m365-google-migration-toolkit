# Microsoft 365 User Provisioning Checklist

This document provides a basic checklist for validating user provisioning during a Google Workspace to Microsoft 365 migration.

## Purpose

User provisioning is a critical step before migrating mailboxes or changing DNS records. Each user must exist in Microsoft 365, have the correct license, and have an active Exchange Online mailbox.

## Basic User Checks

Validate the following information for each user:

* Display name
* Username
* Primary email address
* Aliases
* Microsoft 365 license
* Exchange Online mailbox
* Password status
* MFA requirements
* Assigned groups
* Shared mailbox permissions
* Mobile device requirements

## Account Creation

Users can be created manually, imported from CSV, synchronized from Active Directory, or created through Microsoft Entra ID.

Common provisioning methods:

* Manual creation in Microsoft 365 Admin Center
* CSV import
* Microsoft Entra Connect sync
* PowerShell
* Microsoft Graph

## License Assignment

Each migrated user should have the correct license assigned before mailbox migration.

Check:

* License is active
* Exchange Online is enabled
* User has mailbox access
* No license conflict exists
* User has correct service plans enabled

## Email Address Validation

Confirm that the following addresses are correct:

```text
Primary SMTP: user@example.com
Alias: user.alias@example.com
Tenant address: user@example.onmicrosoft.com
```

Common issues:

* Wrong primary SMTP address
* Missing alias
* Duplicate email address
* Domain not verified
* User created with incorrect username

## Mailbox Validation

After license assignment, validate mailbox creation.

Check:

* Mailbox exists
* Outlook Web Access works
* User can send email
* User can receive email
* Calendar is available
* Mailbox is visible in Exchange Admin Center

## Shared Mailboxes

For shared mailboxes, validate:

* Shared mailbox exists
* Users have access
* Send As permissions are assigned
* Send on Behalf permissions are assigned if required
* Mailbox appears in Outlook
* Mailbox is accessible from Outlook Web Access

## Distribution Groups

Validate:

* Group name
* Group email address
* Members
* Owners
* External sender permissions
* Delivery restrictions

## MFA and Security

Before migration, confirm:

* MFA requirements are communicated
* Users have configured authentication methods
* Temporary Access Pass is available if needed
* Admin accounts are protected
* Legacy authentication is reviewed

## Post-Provisioning Validation

Before migration cutover, test with at least one pilot user.

Validate:

* Login to Microsoft 365
* Outlook Web Access
* Outlook desktop profile
* Mail send/receive
* Calendar access
* Mobile configuration
* Password reset process

## Security Notes

Do not publish real usernames, tenant IDs, domains, passwords, or screenshots from production environments.
