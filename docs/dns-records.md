# DNS Records for Microsoft 365 Mail Flow

This document explains common DNS records used during Microsoft 365 email migration and mail flow configuration.

## Purpose

DNS records are required to verify domain ownership, route email, authenticate messages, and allow Outlook clients to discover the correct mailbox settings.

## Common Microsoft 365 DNS Records

| Record Type | Purpose                               |
| ----------- | ------------------------------------- |
| TXT         | Domain verification                   |
| MX          | Routes inbound email to Microsoft 365 |
| SPF         | Defines allowed mail servers          |
| DKIM        | Adds cryptographic email signing      |
| DMARC       | Defines policy for SPF/DKIM alignment |
| CNAME       | Autodiscover and service redirection  |

## Domain Verification Record

Microsoft 365 usually requires a TXT record to verify domain ownership.

Example:

```text
Type: TXT
Name: @
Value: MS=ms00000000
TTL: 3600
```

## MX Record

The MX record controls where inbound email is delivered.

Example:

```text
Type: MX
Name: @
Value: example-com.mail.protection.outlook.com
Priority: 0
TTL: 3600
```

Important:

* Do not change the MX record before the migration cutover.
* Changing MX redirects new inbound email to Microsoft 365.
* DNS propagation may take time depending on TTL and DNS provider.

## SPF Record

SPF helps define which servers are allowed to send email for the domain.

Example for Microsoft 365:

```text
Type: TXT
Name: @
Value: v=spf1 include:spf.protection.outlook.com -all
TTL: 3600
```

Important:

* A domain should not have multiple SPF records.
* If there is an existing SPF record, merge the Microsoft 365 include into it.
* Multiple SPF records can cause SPF validation failures.

## Autodiscover Record

Autodiscover allows Outlook to automatically find Exchange Online settings.

Example:

```text
Type: CNAME
Name: autodiscover
Value: autodiscover.outlook.com
TTL: 3600
```

## DKIM

DKIM adds a digital signature to outgoing email.

Microsoft 365 usually provides two CNAME records for DKIM.

Generic example:

```text
Type: CNAME
Name: selector1._domainkey
Value: selector1-example-com._domainkey.example.onmicrosoft.com
```

```text
Type: CNAME
Name: selector2._domainkey
Value: selector2-example-com._domainkey.example.onmicrosoft.com
```

## DMARC

DMARC defines how receiving servers should handle messages that fail SPF or DKIM validation.

Basic monitoring example:

```text
Type: TXT
Name: _dmarc
Value: v=DMARC1; p=none; rua=mailto:dmarc@example.com
TTL: 3600
```

Policy options:

```text
p=none
p=quarantine
p=reject
```

For a first implementation, `p=none` is commonly used for monitoring before enforcing stricter policies.

## Post-Change Validation

After DNS changes, validate:

* MX points to Microsoft 365
* SPF includes Microsoft 365
* Autodiscover resolves correctly
* DKIM records are published
* DMARC record is valid
* Users can send and receive email
* External senders can deliver email successfully

## Security Notes

Do not publish real DNS records, tenant identifiers, internal domains, or customer domains in public repositories.
