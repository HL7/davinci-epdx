Instance: PDEXPriorAuth
InstanceOf: PdexPriorAuthorization
Description: "PDex Prior Authorization based on EOB Inpatient Example"
Usage: #example
* id = "PDexPriorAuth1"
//* id = "1234-234-1243-12345678901-20190101-20191031"
* meta.profile = Canonical(PdexPriorAuthorization)
* meta.lastUpdated = "2021-10-12T09:14:11+00:00"
* language = #en-US
* status = #active
* identifier.value = "PA123412341234123412341234"
* identifier.system = "https://www.exampleplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#institutional
* type.text = "Institutional"
* preAuthRefPeriod.start = "2021-10-01"
* preAuthRefPeriod.end = "2021-10-31"

* use = #preauthorization
* patient = Reference(Patient/1)
* insurer = Reference(Organization/2)
* insurer.display = "Example Health Plan"
* billablePeriod.start = "2021-10-01"
* billablePeriod.end = "2021-10-31"
* created = "2021-09-20T00:00:00+00:00"
* provider = Reference(Organization/3)
* provider.display = "Example Health Plan"
* priority = $HL7ProcessPriority#normal "Normal"
* fundsReserveRequested = $HL7FundsReserve#provider "Provider"
* fundsReserve = $HL7FundsReserve#none "None"
* related[0].relationship = $HL7RelatedClaim#associated "Associated Claim"
* related[0].reference.value = "XCLM1001"
* careTeam[0].provider = Reference(Organization/3)
* careTeam[0].sequence = 1
* careTeam[0].responsible = true
* insurance.coverage = Reference(883210)

* item[0].category = $X12ServiceType#3 "Consultation"
* item[0].productOrService = http://www.ama-assn.org/go/cpt#99202
// * item[0].productOrService = https://www.cms.gov/Medicare/Medicare-Fee-for-Service-Payment/ProspMedicareFeeSvcPmtGen/HIPPSCodes#BB201 "Behavior Only, ADL Index 6 - 10/Medicare 5 day assessment (Full)"
* item[0].sequence = 1
* item[0].adjudication[adjudicationamounttype].id = "1"
* item[0].adjudication[adjudicationamounttype].category = $HL7AdjudicationCS#submitted "Submitted Amount"

* item[0].adjudication[adjudicationamounttype].amount.value = 300.99
* item[0].adjudication[adjudicationamounttype].amount.currency = urn:iso:std:iso:4217#USD "United States dollar"
// * item[0].adjudication[denialreason].category.coding

* outcome = #queued
* diagnosis[0].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#G89.4
* diagnosis[0].type = $HL7DiagnosisType#principal
* diagnosis[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage[0] = Reference(Coverage/Coverage1)

