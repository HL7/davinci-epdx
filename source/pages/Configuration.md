---
title: Configuration
layout: default
active: Configuration
---

Each CDS Hook service provided by a health plan shall support multiple different types of patient/member enquiry. For example, a health plan might return information about:

- Patient demographics
- patient care history
- Allergies
- Immunizations
- Prior encounters/episodes of care
- Medications

PDex supports three types of scenarios:

- New Patient presents at Provider
- Patient returns to Provider
- Patient presents at Specialist

The hook interaction for these scenarios is:
* appointment-book

The provider may pass search parameters to the hook. These parameters shall be set as defaults and passed to the hook as one or more task resources. The parameters will in the Task resource will be used to construct search parameters in the health plan's system that can limit a search by:
- Period (Start and optionally End date)
- Excluded Practitioner(s)
- Excluded Organization(s)
- Excluded Location(s)

The later three items are used to enable the Provider to exclude information that they may already have in their system.
