# Known Issues During Google Workspace to Microsoft 365 Migration

This document lists common issues that may appear during or after a Google Workspace to Microsoft 365 migration.

## 1. DNS Propagation Delay

### Symptom

Some users receive emails in Google Workspace while others receive emails in Microsoft 365.

### Possible Cause

MX records were recently changed and DNS propagation is still in progress.

### Recommended Checks

* Check MX records from multiple DNS lookup tools
* Confirm TTL values
* Validate Microsoft 365 mail flow
* Keep source environment accessible during transition

---

## 2. Outlook Shows Only Recent Emails

### Symptom

Outlook desktop only shows recent emails, while webmail shows more messages.

### Possible Cause

Cached Exchange Mode may be configured to download only recent email.

### Recommended Checks

* Check Cached Exchange Mode slider
* Review Outlook sync status
* Wait for initial synchronization
* Recreate Outlook profile if needed

---

## 3. Emails Found by Search but Not Visible in Inbox

### Symptom

A message appears when searched but is not visible in the Inbox.

### Possible Cause

Outlook filters, Focused Inbox, conversation view, or folder rules may hide messages.

### Recommended Checks

* Clear search box
* Disable filters
* Review Focused Inbox
* Check rules
* Reset Outlook view

---

## 4. Outlook Keeps Asking for Password

### Symptom

Outlook repeatedly prompts the user to sign in.

### Possible Cause

Cached credentials, old Google Workspace configuration, or authentication changes.

### Recommended Checks

* Clear Windows Credential Manager
* Remove old Outlook profile
* Create a new profile
* Confirm MFA settings
* Restart the device

---

## 5. Mobile Device Still Uses Gmail Settings

### Symptom

User receives emails on Gmail but not on Outlook mobile.

### Possible Cause

The device is still configured with the old Google Workspace account.

### Recommended Checks

* Remove old Gmail account from the mail app
* Add Microsoft 365 account
* Use Outlook mobile app if required
* Validate MFA and Conditional Access policies

---

## 6. Autodiscover Points to the Wrong Provider

### Symptom

Outlook tries to configure the mailbox using old settings.

### Possible Cause

Autodiscover DNS record still points to Google Workspace or another provider.

### Recommended Checks

* Validate CNAME autodiscover record
* Confirm it points to `autodiscover.outlook.com`
* Clear DNS cache
* Recreate Outlook profile

---

## 7. SPF Record Conflict

### Symptom

Emails are marked as spam or fail authentication checks.

### Possible Cause

The domain has multiple SPF records or the Microsoft 365 include is missing.

### Recommended Checks

* Confirm only one SPF TXT record exists
* Merge required providers into one SPF record
* Validate Microsoft 365 SPF include
* Review DMARC reports if available

---

## 8. Shared Mailbox Does Not Appear

### Symptom

A user cannot access a shared mailbox after migration.

### Possible Cause

Permissions were not assigned or Outlook has not refreshed mailbox access.

### Recommended Checks

* Confirm Full Access permission
* Confirm Send As permission if required
* Test access from Outlook Web Access
* Restart Outlook
* Recreate Outlook profile if needed

---

## 9. Missing Aliases

### Symptom

User does not receive emails sent to an old address or alias.

### Possible Cause

Alias was not created in Microsoft 365.

### Recommended Checks

* Review user proxy addresses
* Add missing alias
* Test mail flow
* Confirm domain is verified

---

## 10. User Confusion After Migration

### Symptom

Users are unsure where to access email or how to configure Outlook.

### Possible Cause

Lack of communication or post-migration instructions.

### Recommended Actions

* Send user instructions before cutover
* Provide Outlook Web Access URL
* Provide mobile configuration steps
* Explain password and MFA requirements
* Prepare help desk support for first login

## Security Notes

Do not include real domains, mailbox names, message headers, user screenshots, or tenant details in public documentation.
