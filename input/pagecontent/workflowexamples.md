[Previous Page - CDS-Hooks](cds-hooks.html)

Assumption: Supported Provider/Clinician workflow meet the HIPAA treatment, payment, and operations purposes per OCR guidance and are in compliance with federal and state regulations. [https://www.hhs.gov/hipaa/for-professionals/privacy/guidance/disclosures-treatment-payment-health-care-operations/index.html](https://www.hhs.gov/hipaa/for-professionals/privacy/guidance/disclosures-treatment-payment-health-care-operations/index.html)

These are example use cases and there is no reason to assume they are exhaustive.

There are two Provider/Clinician workflow examples:

1. First visit with new Provider
2. Return visit with Provider

### First Visit with New Provider

The patient calls their new provider to arrange for an annual physical.

The receptionist in the doctor's office collects their personal information, health plan coverage information and creates an appointment, a patient record and an initial encounter record.  

The creation of an appointment activates a CDS Hook transaction: appointment-book. 

### Return Visit with Provider

The patient calls their provider to arrange a follow-up appointment.

The receptionist in the doctor's office collects their personal information, checks for any change in health plan coverage information and creates an appointment, a patient record and an initial encounter record.  

The creation of an appointment activates a CDS Hook transaction: appointment-book. 

In this scenario the Clinician that reviews the Member History is only interested in information in the Member record since their last visit and **MAY** want to exclude information from their own organization, since that information will already be recorded in their EMR system.



[Next Page - Member-Authorized OAuth2.0 Exchange](member-authorizedoauth2exchange.html)
