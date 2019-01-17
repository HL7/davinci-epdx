---
title: Introduction
layout: default
active: Introduction
---

The Da Vinci ePayer Data Exchange (ePDx) initiative is specifying the FHIR profiles that will be used to support interoperable communication from Payers to Providers and health plan members that a practitioner is caring for.

Whereas the Blue Button 2.0 initiative is specifying the profiles used to communicate between health plans and their members. The ePDx specification is focused on presenting member health and claims information available to the health plan in FHIR clinical profiles that are more easily handled by provider Electronic Medical Records (EMR) systems. Wherever possible, ePDx will use established US Core FHIR Profiles. Where information must be presented in FHIR resources that fall outside of the Argonaut/US Core implementation guides ePDx will define the necessary Da Vinci FHIR profiles to contain the relevant information.

The ePDx Implementation Guide (IG) will use the HL7 FHIR Release 4/US Core STU3 specification as its base, but will provide additional guidance and documentation to support implementations that follow the HL7 FHIR STU3/US Core STU2 and HL7 FHIR DSTU2/Argonaut specifications. 

The ePDx profiles documented in this IG will be used to transmit data to provider systems. The mechanism used for this interaction will be based upon the CDS-Hooks specification.  Providers will be able to initiate a request for information to a health plan as part of their normal workflows. The CDS-Hooks interface will be used to pass information about the Patient. This information will be used to match the patient to the Health Plans member records and return relevant claims and associated health information to the providers EMR using appropriate FHIR clinical resources.
