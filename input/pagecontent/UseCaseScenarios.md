[Previous Page - US Core MedicationRequest](USCoreMedicationRequest.html)


This implementation guide addresses a Provider-to-Payer use case:

- Patient at Primary Care Provider

The other use case is for Member/Patient-mediated Payer-to-Payer Exchange:

- Consumer enrolls with new health plan and accesses their prior health plan to authorize sharing of the health history that the prior health plan holds on the consumer.

The examples used in this guide are based on Payers providing claims from events where a member visits an ambulatory provider or when a member switches health plans.
		
Three example data requests from Providers to Health Plans are covered in this IG and the associated Reference Implementation:

1. What Encounters has the patient had since mm/dd/yyyy, excluding encounters at my organization.
2. What procedures has the patient had?
3. What medications has the patient received (i.e. A claim for a medication has been settled by the health plan)

Reference Implementations can be found in the Da Vinci Github account:
	- [PDex SMART-on-FHIR+CDS-Hook Patient Import App](https://github.com/HL7-DaVinci/PDex-Patient-Import-App)
	- [PDex Payer-to-Payer Patient Import App](https://github.com/HL7-DaVinci/PDex-Patient-Import-App)
	


[Next Page - Patient Persona](PatientPersona.html)