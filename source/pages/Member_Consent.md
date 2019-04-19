---
title: Member Consent
layout: default
active: Member Consent
---

Member/Patient Consent for scenarios covered in this Implementation Guide fall into two areas:

1. Provider-Health Plan Exchange
2. Member-mediated Information Exchange

### Provider-Health Plan Exchange

Provider-Health Plan exchange of data is covered by the Health Insurance Portability and Accountability Act (HIPAA) under the [Treatment Payment and Health Care Operations](https://www.hhs.gov/hipaa/for-professionals/privacy/guidance/disclosures-treatment-payment-health-care-operations/index.html) provision.

### Member-mediated Information Exchange

The CMS Notice For Proposed Rule Making for Patient access and Interoperability requires that a subscriber to a new health plan **SHOULD** be able to request their information to be passed from their old health plan to their new health plan.

A Member will also be able to use APIs to share information with Third Party Applications. This includes:

- Their health history
- Healthcare network information
- Pharmacy network information
- Prescription Drug Formulary information

The Member-mediated Information Exchange method will build upon established OAuth2.0 protocols for patient access to their health and claims information that enables the sharing of information with third-party applications. The health history payload for the exchange would be the same FHIR resources that are passed to providers under the Provider-Payer exchange scenario.
