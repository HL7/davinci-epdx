---
title: Introduction
layout: default
active: Introduction
---

The Da Vinci Payer Data exchange (PDex) initiative is specifying the FHIR profiles that will be used to support interoperable communication from Payers to Providers and health plan members that a practitioner is caring for.

Whereas the Blue Button 2.0 initiative is specifying the profiles used to communicate between health plans and their members. The PDex specification is focused on presenting member health and claims information available to the health plan in FHIR clinical profiles that are more easily handled by provider Electronic Medical Records (EMR) systems. Wherever possible, PDex will use established US Core Profiles. Where information must be presented in FHIR resources that fall outside of the Argonaut/US Core implementation guides the HL7 Da Vinci Health Record exchange (HRex) Implementation Guide will define the necessary Da Vinci FHIR profiles. 

The PDex Implementation Guide (IG) will use the HL7 FHIR Release 4/US Core STU3 specification as its base, but will provide additional guidance and documentation to support implementations that follow the HL7 FHIR STU3/US Core STU2 and HL7 FHIR DSTU2/Argonaut specifications. 

This guide supports two workflows:
1. Provider - Payer interaction
2. Member-mediated Payer-to-Payer exchange

## 1. Provider - Payer Interaction
The HRex/PDex profiles documented in this IG will be used to transmit data to provider systems. The mechanism used for this interaction will be based upon the CDS-Hooks specification.  Providers will be able to initiate a request for information to a payer/health plan as part of their normal workflows. The CDS-Hooks interface will be used to pass information about the Patient. This information will be used to match the patient to the Health Plan's member records and return relevant claims and associated health information to the providers EMR using appropriate FHIR clinical resources. The Provider will be able to select data to be committed to their EMR from the information returned from the health plan. 

## 2. Member-mediated Payer-to-Payer exchange
This interaction will use the OAuth2.0 authorization process to enable a Member to authorize the exchange of their health data between their old and new health plans. The member will have the option to choose to share their behavioral health information as part of this exchange. The payload that can be retrieved by the new health plan from the old health plan will use the same HRex/PDex profiles used in workflow 1 for Provider to Payer Interactions.

