Instance: Example-PDex-Provider-Group
InstanceOf: PDexProviderGroup
Description: "Example of a Payer-generated Member Attribution List for an In-Network/Contracted Provider."
Usage: #example
* meta.lastUpdated = "2024-03-21T17:18:00.000Z"
* extension[attributionListStatus].valueCode = #final
* extension[optedOut].valueQuantity.value = 5.0
* identifier[npi].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[npi].value = "1122334455"
* identifier[tin].system = "urn:oid:2.16.840.1.113883.4.4"
* identifier[tin].value = "99-12345"
* active = true
* type = #person
* actual = true
* name = "Attributed List of Health Plan Members for Practitioner 1122334455."
* managingEntity.reference = "Organization/ProviderOrg1"
* member[0].id = "0"
* member[=].entity.reference = "Patient/1001"
* member[=].extension[lastTransmitted].valueDateTime = "2024-03-21T17:18:00.000Z"
* member[=].extension[lastResources].valueString = "Patient,Condition,Observation,Procedure"
* member[=].extension[lastFilters].valueString = "Condition?recordedDate=ge2023-09-23,Procedure?performed=ge2023-03-21"

