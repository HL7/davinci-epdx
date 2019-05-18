---
title: 2-6 Implementation Hierarchy and Priorities
layout: default
active: 2-6 Implementation Hierarchy and Priorities
---

The PDex Implementation Guide (IG) will utilize existing HL7 FHIR Profiles in the following order of descending priority:
 
1. Da Vinci HRex IG profiles (based on FHIR R4 - http://build.fhir.org/ig/HL7/davinci-hrex/index.html )
2. HL7 FHIR US Core STU3 (based on FHIR R4 - https://build.fhir.org/ig/HL7/US-Core-R4/ ) 
3. HL7 Argonaut Profiles (based on FHIR DSTU2 - http://www.fhir.org/guides/argonaut/r2/ )
4. HL7 FHIR US Core STU2 (based on FHIR STU3 - http://hl7.org/fhir/us/core/STU2/ )


This Implementation Guide recognizes that Electronic Medical Record systems used by providers may have existing FHIR APIs that are based on versions of FHIR prior to FHIR R4.

Amongst Health Plans there has been limited adoption of FHIR APIs. Therefore for Health Plan APIs identified in this IG the FHIR R4 version **SHALL** be used.
