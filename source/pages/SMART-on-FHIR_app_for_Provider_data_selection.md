---
title: SMART-on-FHIR app for Provider data selection
layout: default
active: SMART-on-FHIR app for Provider data selection
---

The SMART app retrieves the Transaction Bundle(s) from the Health Plan system using the access token provided.
The SMART app retrieves the ConformanceStatement/CapabilityStatement/Metadata from the Provider's EMR system. It evaluates the result to determine which resources can be written to the EMR.

The Provider selects records to be committed to their EMR system. 
After selecting the relevant data the provider triggers the write to the EMR. 

In the write step the app determines if the records can be written to the EMR.  If any resources are unable to be written the resources should be  added into a document bundle and submitted to the EMR as a DocumentReference. 

Since the Health Plan implementation is based on FHIR R4 and the EMR implementation for the Connectathon is based on DSTU2 (Argonaut) there will be differences in the profile definitions.

The SMART app will **not** transform records between versions. Instead the SMART app will create a documentReference and incorporate a Document Bundle and a human readable PDF of the resources being committed. The document reference will be committed to the patient's record in the EMR.