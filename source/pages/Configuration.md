---
title: Configuration
layout: default
active: Configuration
---

Each CDS Hook service provided by a payer might support multiple different types of patient/member enquiry. For example, a payer might return information about:

- Patient demographics
- patient care history
- Allergies
- Immunizations
- Prior encounters/episodes of care
- Medications

PDex supports five types of scenarios:

- New Patient presents at Provider
- Patient returns to Provider
- Patient presents at Specialist
- Medication Prescribe
- Order Review

The hooks interactions for these scenarios are:
- appointment-booking
- encounter-start
- medication-prescribe
- order-review

Additionally the payer may support workflow -related hooks such as:
- medication-prescribe

The provider may pass search parameters to the hook. These parameters can include:
- Period (Start and optionally End date)
- Excluded Practitioner(s)
- Excluded Organization(s)
- Excluded Location(s)

The later three items are used to enable the Provider to exclude information that they may already have in their system.