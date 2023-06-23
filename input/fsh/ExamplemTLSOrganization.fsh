//// ------------------------------
//
//Instance: mtlsorganization1
//InstanceOf: MtlsOrganization
//Description: "Example of mTLS Managing Organization"
//* id = "DiamondOnyxHealth3"
//* identifier.value = "DiamondOnyxHealth3"
//* meta.lastUpdated = "2022-07-04T15:00:00.000Z"
//* active = true
//* name = "DiamondOnyxHealth"
//* type = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/OrgTypeCS#payer "Payer"
//* telecom.system = http://hl7.org/fhir/contact-point-system#url "URL"
//* telecom.value = "https://diamond.1.onyxhealth.io"
//* endpoint.reference = "Endpoint/diamond-mtls-endpoint1"



// ------------------------------
Instance: mtlsorganization2
//InstanceOf: $USCoreOrganization
InstanceOf: MtlsOrganization
Description: "Example of mTLS Organization"
* id = "DiamondOnyxHealth1"
//* identifier.type = $V2IdentifierTypeCS#TAX
//* identifier.value = "DiamondOnyxHealth1"
//* identifier.system = "http://diamondonyxhealth.io/payer/plan"
* meta.lastUpdated = "2022-07-04T15:00:00.000Z"
* active = true
* type = $OrgTypeCS#payer "Payer"
* name = "DiamondOnyxHealth"
* telecom.system = http://hl7.org/fhir/contact-point-system#url "URL"
* telecom.value = "https://diamond.1.onyxhealth.io"


