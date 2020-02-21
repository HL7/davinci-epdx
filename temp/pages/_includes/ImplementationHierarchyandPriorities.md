[Previous Page - Implementation Assumptions](ImplementationAssumptions.html)


The PDex Implementation Guide (IG) will utilize existing HL7 FHIR Profiles in the following order of descending priority:
 
1. Da Vinci HRex IG profiles (based on FHIR R4 - [http://build.fhir.org/ig/HL7/davinci-ehrx/](http://build.fhir.org/ig/HL7/davinci-ehrx/) )
2. HL7 FHIR US Core STU3 (based on FHIR R4 - [http://hl7.org/fhir/us/core/](http://hl7.org/fhir/us/core/) ) 

This Implementation Guide recognizes that Electronic Medical Record systems used by providers may have existing FHIR APIs that are based on versions of FHIR prior to FHIR R4 with DSTU2 (Argonaut) being the most popular implementation.

Amongst Health Plans there has been limited adoption of FHIR APIs. Therefore, for Health Plan APIs identified in this IG the FHIR R4 version **SHALL** be used.



[Next Page - PDex Data Payloads](PDexDataPayloads.html)