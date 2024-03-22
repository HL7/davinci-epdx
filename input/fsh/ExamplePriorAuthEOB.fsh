Instance: PdexPriorAuth
InstanceOf: PdexPriorAuthorization
Description: "PDex Prior Authorization based on EOB Inpatient Example"
Usage: #example
* id = "PDexPriorAuth1"
//* id = "1234-234-1243-12345678901-20190101-20191031"
//* meta.profile[supportedProfile] = Canonical(PdexPriorAuthorization)
* meta.lastUpdated = "2024-02-06T09:14:11+00:00"
* language = #en-US
* status = #active
* identifier.value = "PA123412341234123412341234"
* identifier.system = "https://www.exampleplan.com/fhir/EOBIdentifier"
//* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
//* extension.valueCode = #fm
* extension[levelOfServiceType].valueCodeableConcept = https://codesystem.x12.org/005010/1338#U "Urgent"
//* extension[levelOfServiceType].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"


* type = $HL7ClaimTypeCS#institutional
* type.text = "Institutional"
* preAuthRefPeriod.start = "2021-10-01"
* preAuthRefPeriod.end = "2021-10-31"

* use = #preauthorization
* patient = Reference(Patient/1)
* insurer = Reference(Organization/Payer1)
* insurer.display = "Example Health Plan"
* billablePeriod.start = "2021-10-01"
* billablePeriod.end = "2021-10-31"
* created = "2021-09-20T00:00:00+00:00"
* provider = Reference(Organization/Payer2)
* provider.display = "Another Example Health Plan"
* priority = http://terminology.hl7.org/CodeSystem/processpriority#normal "Normal"
* fundsReserveRequested = $HL7FundsReserve#provider "Provider"
* fundsReserve = $HL7FundsReserve#none "None"
* related[0].relationship = $HL7RelatedClaim#associated "Associated Claim"
* related[0].reference.value = "XCLM1001"
* careTeam[0].provider = Reference(Organization/Payer1)
* careTeam[0].sequence = 1
* careTeam[0].responsible = true
* insurance.coverage = Reference(883210)

* item.sequence = 1
* item.category = $X12ServiceType#3 "Consultation"
// * item[0].productOrService = http://www.ama-assn.org/go/cpt#99202
* item.productOrService = $CPT#99202
* item.productOrService = https://www.cms.gov/Medicare/Medicare-Fee-for-Service-Payment/ProspMedicareFeeSvcPmtGen/HIPPSCodes#BB201 "Behavior Only, ADL Index 6 - 10/Medicare 5 day assessment (Full)"

* item.adjudication[adjudicationamounttype].extension[reviewAction].url = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/extension-reviewAction"

* item.adjudication[adjudicationamounttype].id = "1"
* item.adjudication[adjudicationamounttype].category = $HL7AdjudicationCS#submitted "Submitted Amount"
* item.adjudication[adjudicationamounttype].amount.value = 300.99
* item.adjudication[adjudicationamounttype].amount.currency = urn:iso:std:iso:4217#USD "United States dollar"
// * item.adjudication.[adjudicationamounttype].category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
* item.adjudication[adjudicationamounttype].extension[reviewAction].extension[number].valueString = "AUTH0001"
* item.adjudication[adjudicationamounttype].extension[reviewAction].extension[code].valueCodeableConcept = https://codesystem.x12.org/005010/306#A1 "Certified in total"

//* item[0].adjudication[allowedunits].id = "2"
//* item[0].adjudication[allowedunits].category = $HL7AdjudicationCS#submitted "Submitted Amount"
//* item[0].adjudication[allowedunits].value = 1.0
//
//* item[0].adjudication[denialreason].category.coding
//* item[0].adjudication[denialreason].id = "3"
//* item[0].adjudication[denialreason].reason =
//* item[0].adjudication[denialreason].category = $HL7AdjudicationCS#submitted "Submitted Amount"
//* item[0].adjudication[denialreason].value = 0.0

//* item[0].adjudication[consumedunits].id = "4"
//* item[0].adjudication[consumedunits].category = $HL7AdjudicationCS#submitted "Submitted Amount"
//* item[0].adjudication[consumedunits].value = 0.0


* outcome = #queued
* diagnosis[0].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#G89.4
* diagnosis[0].type = $HL7DiagnosisType#principal
* diagnosis[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage[0] = Reference(Coverage/Coverage1)

* total.category = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/PriorAuthorizationValueCodes#eligible "Eligible"
* total.extension[priorauth-utilization].url = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/PriorAuthorizationUtilization"
* total.extension[priorauth-utilization].valueQuantity.value = 1
* total.amount.value = 100
* total.amount.currency = #USD
