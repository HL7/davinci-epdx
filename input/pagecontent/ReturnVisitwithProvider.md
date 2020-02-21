[Previous Page - First Visit with New Provider](FirstVisitwithNewProvider.html)


The patient calls their provider to arrange a follow-up appointment.

The receptionist in the doctors office collects their personal information, checks for any change in health plan coverage information and creates an appointment, a patient record and an initial encounter record.  

The creation of an appointment activates a CDS Hook transaction: appointment-book. 

In this scenario the Clinician that reviews the Member History is only interested in information in the Member record since their last visit and **MAY** want to exclude information from their own organization, since that information will already be recorded in their EMR system.



[Next Page - FHIR Profiles and CDS Hooks Context](FHIRProfilesandCDSHooksContext.html)