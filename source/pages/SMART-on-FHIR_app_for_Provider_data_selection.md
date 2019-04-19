---
title: SMART-on-FHIR app for Provider data selection
layout: default
active: SMART-on-FHIR app for Provider data selection
---

When a SMART-on-FHIR App is provided as a link in the content returned from the CDS Hooks it **SHALL** receive:

- The URL entrypoint to the Health Plan's FHIR API
- An access token to enable secure access to the Member's health history via the FHIR API
- An access token to enable the app to write data to the Provider's EMR system.


The SMART App **SHALL** retrieve the CapabilityStatement/Metadata from the Health Plan's FHIR API.
 
The SMART App **SHALL** retrieve the ConformanceStatement/CapabilityStatement/Metadata from the Provider's EMR system. 

The Provider **MAY** select records from the Health Plan's FHIR API to be committed to their EMR system.  After selecting the relevant data the provider **MAY** triggers a write of the selected data to their EMR system. 

The SMART App **SHALL** use the EMRs Metadata to determine what records **MAY** be written to the EMR system. 

The SMART App **SHALL** not convert records from one FHIR version to another.

If the Provider's EMR system does not support FHIR R4 the SMART App **MAY** create a DocumentReference record and incorporate a FHIR bundle of the selected records and a Human Readable PDF of the selected records and write the DocumentReference record to the Patient record in the EMR system, 
    
If the Provider's EMR system supports FHIR R4 the SMART App **SHALL** determine which resources may be written to the Patient's record in the EMR system. It will write these records to the EMR. Any remaining selected records, where write operations are not permitted by the EMR system's FHIR API **SHOULD** be placed in a FHIR bundle and a Human Readable PDF of those selected records **SHOULD** be generated and the bundle and PDf committed to the Patient's record in the EMR using a DocumentReference record.

