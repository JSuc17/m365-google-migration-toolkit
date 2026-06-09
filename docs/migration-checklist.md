# Google Workspace to Microsoft 365 Migration Checklist

This checklist provides a structured approach for planning and supporting a Google Workspace to Microsoft 365 migration.

## 1. Pre-Migration Assessment

Before starting the migration, collect and validate the following information:

* Current Google Workspace domain
* Number of users
* Number of shared mailboxes
* Distribution groups
* Aliases
* Existing DNS provider
* Current MX records
* Mailbox size per user
* Critical users or VIP accounts
* Devices used by users
* Outlook requirements
* Mobile email configuration
* Existing third-party integrations

## 2. Microsoft 365 Tenant Preparation

Prepare the Microsoft 365 environment before changing mail flow.

Checklist:

* Microsoft 365 tenant created
* Primary domain added
* Domain ownership verified
* Users created or synchronized
* Licenses assigned
* Exchange Online enabled
* Security defaults reviewed
* Admin roles assigned
* Test accounts created

## 3. User Provisioning

Validate that all users exist in Microsoft 365.

Check:

* Display name
* Username
* Primary email address
* Aliases
* License assignment
* Mailbox availability
* Password status
* MFA requirements

## 4. DNS Preparation

Prepare required DNS records before migration.

Common records:

* MX
* SPF
* DKIM
* DMARC
* Autodiscover
* TXT verification record

Do not change MX records until the migration cutover window.

## 5. Mailbox Migration Planning

Before migrating mailboxes:

* Identify mailbox sizes
* Define migration batches
* Prioritize critical users
* Schedule migration window
* Communicate expected downtime
* Confirm backup or retention policy
* Test with pilot users

## 6. Pilot Migration

Perform a pilot migration with a small group of users.

Recommended pilot users:

* IT team member
* Standard user
* Heavy mailbox user
* Mobile device user
* Outlook desktop user

Validate:

* Email send/receive
* Calendar access
* Contacts
* Outlook profile
* Mobile configuration
* Webmail access
* Shared mailbox access

## 7. Cutover

During the migration cutover:

* Stop or pause user changes in the source environment
* Complete final mailbox sync
* Change MX records
* Validate SPF record
* Configure Autodiscover
* Confirm inbound and outbound mail flow
* Monitor message delivery
* Support users during first login

## 8. Post-Migration Support

After migration, validate:

* Users can access Outlook on the web
* Users can configure Outlook desktop
* Mobile email works
* Email delivery is stable
* Old Gmail access is documented
* Shared mailboxes work
* Distribution groups work
* External senders can reach the domain
* Internal users can send/receive correctly

## 9. Common Post-Migration Issues

Common issues include:

* Outlook does not load old emails
* Autodiscover points to the wrong provider
* Mobile device still uses Gmail settings
* User has cached credentials
* Shared mailbox permissions are missing
* DNS propagation delay
* SPF record conflict
* Focused Inbox hides messages
* Outlook filters show only unread or recent messages

## 10. Security Notes

Do not publish real tenant information, company domains, user emails, passwords, migration reports, or internal screenshots.

Use placeholder values in documentation.

Examples:

```text
example.com
user@example.com
tenant.example.onmicrosoft.com
```
