Instance: PriorAuthCoverage
InstanceOf: $HrexCoverage
Description: "Health Plan Coverage for Prior Authorization"
Usage: #example
* id = "Coverage1"
* status = http://hl7.org/fhir/fm-status#active "Active"
* identifier[0].system = "http://example.org/old-payer/identifiers/coverage"
* identifier[0].value = "234567"

* beneficiary.reference = "Patient/1"
* payor.reference = "Organization/Payer1"

