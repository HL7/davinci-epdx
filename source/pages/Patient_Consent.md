---
title: Patient Consent
layout: default
active: Patient Consent
---

Patient Consent for scenarios covered in this Implementation Guide fall into two areas:

1. Provider to Payer Exchange
2. Patient-mediated Payer-to-Payer Exchange

## Provider to Payer Exchange

Provider to Payer exchange of data is covered by HIPAA under the [Treatment Payment and Health Care Operations](https://www.hhs.gov/hipaa/for-professionals/privacy/guidance/disclosures-treatment-payment-health-care-operations/index.html) provision.

## Patient-mediated Payer-to-Payer Exchange
The CMS Notice For Proposed Rule Making for Patient access and Interoperability requires that a subscriber to a new health plan should be able to request their information to be passed from their old health plan to their new health plan.

This method will build upon established OAuth2.0 protocols for patient access to their health and claims information that enables the sharing of information with third-party applications. The payload for the exchange would be the same FHIR resources that are passed to providers under the Provider-Payer exchange scenario.
