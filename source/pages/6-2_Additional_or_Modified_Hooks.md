---
title: 6-2 Additional or Modified Hooks
layout: default
active: 6-2 Additional or Modified Hooks
---

The base CDS hooks 1.0 specification defines the following hooks: 

- patient-view
- medication-prescribe
- order-review
- order-select
- order-sign
- appointment-book
- encounter-start
- encounter-discharge

The expectation is that new hooks will be defined by and eventually formally approved by the community. The formal process for this proposal and maturity development process is still evolving. Individuals interested in this process can provide feedback [here](https://cds-hooks.hl7.org).

### 6-2-1 Additional Hooks

Defining new hooks is an expected part of the CDS Hooks specification and there is no need for hooks to be officially registered with the community for them to be used. However, using registered hooks increases the likelihood of broad adoption by the community - which increases the likelihood of broad uptake of this implementation guide. The project is proposing hooks that build on proposals made in the Da Vinci CRD IG. 

### 6-2-2 Modified Hooks

This IG uses a modified appointment-book hook. Subscriber Id is declared as an OPTIONAL context field. Subscriber Id **SHOULD** be taken from the Patient's Coverage record, or be manually entered by the Provider via the SMART-on-FHIR App.

