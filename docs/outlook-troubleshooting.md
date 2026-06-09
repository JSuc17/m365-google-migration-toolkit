# Outlook Troubleshooting After Microsoft 365 Migration

This guide documents common Outlook issues that can appear after a Google Workspace to Microsoft 365 migration.

## Common Symptoms

Users may report:

* Outlook does not show old emails
* Only recent emails appear
* Unread emails do not match webmail
* Gmail shows messages that Outlook does not show
* Outlook search finds an email but it does not appear in Inbox
* Outlook desktop does not sync
* Outlook asks for credentials repeatedly
* Mobile devices still use Gmail settings
* Focused Inbox hides messages
* Filters hide messages from the Inbox view

## First Checks

Before rebuilding profiles or reinstalling Outlook, check:

* Outlook Web Access works
* User mailbox is licensed
* User can send and receive email from webmail
* DNS Autodiscover points to Microsoft 365
* Outlook is updated
* Internet connection is stable
* No filters are applied
* Focused Inbox is disabled or reviewed
* Cached Exchange Mode settings are correct

## Outlook Web Access Test

Ask the user to test email access through the browser.

Check:

* Login works
* Inbox loads
* Old emails are visible
* Search works
* Send/receive works
* Calendar loads

If webmail works correctly, the issue is likely related to the Outlook desktop client, local profile, cache, filters, or sync settings.

## Focused Inbox

Focused Inbox can make users think that messages are missing.

Check both tabs:

* Focused
* Other

If needed, disable Focused Inbox from Outlook settings.

## Filters and Views

Outlook may only show unread emails, recent emails, or filtered results.

Check:

* View settings
* Filter settings
* Search box
* Current folder
* Sort order
* Unread filter
* Focused Inbox
* Conversation view

Resetting the view can help.

## Cached Exchange Mode

If Outlook only shows recent emails, review Cached Exchange Mode.

Possible causes:

* Mail to keep offline is set to a short period
* OST cache is corrupted
* Sync has not completed
* Large mailbox still downloading

Recommended checks:

* Account Settings
* Cached Exchange Mode slider
* Send/Receive status
* Sync issues folder

## Recreate Outlook Profile

If the profile is corrupted or Autodiscover changed after migration, create a new Outlook profile.

General process:

1. Close Outlook
2. Open Control Panel
3. Open Mail
4. Show Profiles
5. Add new profile
6. Configure Microsoft 365 account
7. Set the new profile as default
8. Open Outlook and allow sync to complete

## Credential Issues

If Outlook keeps asking for credentials:

* Clear Windows Credential Manager entries related to Office, Outlook, Microsoft 365, or old Gmail/Google Workspace connections
* Restart the device
* Open Outlook again
* Sign in with the Microsoft 365 account

## Mobile Devices

After migration, users may need to remove the old Gmail/Google Workspace account and add the Microsoft 365 account.

Check:

* Outlook mobile app
* Native mail app
* Old Google account configuration
* MFA requirement
* Conditional Access policies

## Recommended Troubleshooting Flow

```text
Check Outlook Web Access
        ↓
Check Outlook filters/views
        ↓
Check Focused Inbox
        ↓
Check Cached Exchange Mode
        ↓
Clear credentials
        ↓
Create new Outlook profile
        ↓
Escalate if mailbox or DNS issue is suspected
```

## Security Notes

Do not publish screenshots containing real user emails, domains, tenant names, or mailbox content.
