[Previous Page - Implementation Guide Scope](ImplementationGuideScope.html)


Member/Patient Consent for scenarios covered in this Implementation Guide fall into two areas:

1. Provider-Health Plan Exchange
2. Member-mediated Information Exchange

### Provider-Health Plan Exchange

Provider-Health Plan exchange of data is covered by the Health Insurance Portability and Accountability Act (HIPAA) under the [Treatment Payment and Health Care Operations](https://www.hhs.gov/hipaa/for-professionals/privacy/guidance/disclosures-treatment-payment-health-care-operations/index.html) ( https://www.hhs.gov/hipaa/for-professionals/privacy/guidance/disclosures-treatment-payment-health-care-operations/index.html ) provision.

### Member-mediated Information Exchange

The CMS Interoperability and Patient Access Rule requires that a member to a new health plan **SHALL** be able to request their information be passed from their old health plan to their new health plan.

The CMS rule also specifies that all data from the member's health record that is held by the health plan since January 1, 2016 be available via API.

A Member **SHALL** also be able to use APIs to share information with Third Party Applications. This includes:

- Their health history
- Healthcare network/directory information
- Pharmacy network/directory information
- Prescription Drug Formulary information

The Member-mediated Information Exchange method will build upon established OAuth2.0 protocols for patient access to their health and claims information that enables the sharing of information with third-party applications. The process of Member Authentication, typically using the member's user credentials from the Health Plan's portal, and OAuth2.0 authorization to share will form the basis of the member Consent to share.

The health history payload for the exchange would be the same FHIR resources that are passed to providers under the Provider-Payer exchange scenario.

The exchange of Healthcare network/directory information and Pharmacy network/directory information is covered in the [PDex-plan-net IG](http://hl7.org/fhir/us/davinci-pdex-plan-net/2020Feb/) ( http://hl7.org/fhir/us/davinci-pdex-plan-net/2020Feb/ ).
The exchange of Prescription drug formulary information is covered in the [PDex-formulary IG](http://hl7.org/fhir/us/Davinci-drug-formulary//) ( http://hl7.org/fhir/us/Davinci-drug-formulary/ ).

The OAuth2.0-based exchange is covered in detail in the [Member-Authorized OAuth2 Exchange](Member-Authorized_OAuth2_Exchange.html)



[Next Page - FHIR](FHIR.html)