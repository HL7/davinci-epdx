Profile: MtlsOrganization
Parent: $USCoreOrganization
Id: mtls-organization
Title: "mTLS Organization"
Description: "The mTLS Organization record is used to identify the contact information for a Payer that owns a mTLS Endpoint, or is the managing organization tht administers the Endpoint."
* insert PdexStructureDefinitionContent
* identifier 0..* MS
* identifier ^short = "Unique identifiers for Payer"
* identifier.type MS
* identifier.value MS
* identifier.extension contains
    IdentifierStatus named identifier-status 0..1

* active 1..1 MS

* telecom 1..* MS
* telecom ^short = "Provide URL(s) for member support as required on Member ID card"
* telecom.system 1..1 MS
* telecom.system = http://hl7.org/fhir/contact-point-system#url "URL"
* telecom.value ^short = "URL of Member Support as published on Member ID card"
* telecom.extension contains
        ContactPointAvailableTime named contactpoint-availabletime 0..*
* contact.telecom.extension contains
       ContactPointAvailableTime named contactpoint-availabletime 0..*
* endpoint 0..1 MS
* endpoint ^short = "Reference to Payer-to-Payer mTLS endpoint resource"
* endpoint only Reference(MtlsEndpoint)

