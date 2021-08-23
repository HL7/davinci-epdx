Profile:        HrexCoverage
Parent:         Coverage
Id:             hrex-coverage
Title:          "HRex Coverage Profile"
Description:    "The HRex Coverage Profile defines the constraints for representing a member's healthcare insurance information to the Payer.  Coverage instances complying with this profile, sometimes together with the Patient which this profile references via `beneficiary`, allows a payer to identify a member in their system."
  * insert PdexStructureDefinitionContent
  * ^jurisdiction.coding = urn:iso:std:iso:3166#US
  * identifier  0..* MS
  * type  0..1
  * type  from http://hl7.org/fhir/ValueSet/coverage-type
  * policyHolder  0..1
  * policyHolder  only Reference(us-core-patient or us-core-organization or RelatedPerson)
  * subscriber  0..1
  * subscriber  only Reference(us-core-patient)
  * subscriberId  0..1 MS
  * beneficiary  1..1 MS
  * beneficiary  only Reference(us-core-patient)
  * period  0..1
  * payor  1..* MS
  * payor  only Reference(us-core-organization)
