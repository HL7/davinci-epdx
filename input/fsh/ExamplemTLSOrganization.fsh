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
Usage: #example
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


Instance: Acme
InstanceOf: MtlsOrganization
Description: "Payer Organization"
Usage: #example
//* meta.profile = Canonical(NdhOrganization)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* name = "Acme of CT"
* type = OrgTypeCS#payer "Payer"
* identifier[NPI].value = "1356362586"
* identifier[NPI].system = $NPICS
* identifier.extension[identifier-status].valueCode = CredentialStatusCS#active
//* extension[qualification][0].extension[code].valueCodeableConcept =   $NUCCProviderTaxonomy#3336C0003X "Community/Retail Pharmacy"
//* extension[qualification][=].extension[status].valueCode = http://hl7.org/fhir/us/ndh/CodeSystem/QualificationStatusCS#active
//* alias[0].extension[org-alias-type].valueCodeableConcept = http://hl7.org/fhir/us/ndh/CodeSystem/OrgAliasTypeCS#historical
//* alias[=].extension[org-alias-period].valuePeriod.start = 2011-05-23
//* alias[=].extension[org-alias-period].valuePeriod.end = 2011-05-27
//* alias[=].value = "Acme History"
//* extension[insurance-reference][0].valueReference = Reference(AcmeQHPBronze)
//* extension[insuranceplan].valueReference = Reference(AcmeQHPBronze)
//* extension[endpoint].valueReference = Reference(AcmeOfCTPortalEndpoint)
//* telecom[+].system = #phone
//* telecom[=].value = "(111)-222-3333"
//* telecom[=].rank = 2
//* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon
//* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #tue
//* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #wed
//* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #thu
//* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #fri
//* telecom[=].extension[contactpoint-availabletime][0].extension[availableStartTime].valueTime = 08:00:00
//* telecom[=].extension[contactpoint-availabletime][0].extension[availableEndTime].valueTime = 17:00:00
//* telecom[1].system = #url
//* telecom[1].value = "https://www.acmeofct.com"
//* telecom[1].rank = 1

* telecom[+].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #tue
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #wed
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #thu
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #fri
* telecom[=].extension[contactpoint-availabletime][0].extension[availableStartTime].valueTime = 08:00:00
* telecom[=].extension[contactpoint-availabletime][0].extension[availableEndTime].valueTime = 17:00:00


* address.line[0] = "456 Main Street"
* address.city = "Norwalk"
* address.state = "CT"
* address.postalCode = "00014-1234"
//* extension[org-description].valueString = "Acme of CT is a leading provider of health and other insurance products."
