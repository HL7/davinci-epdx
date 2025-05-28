Instance: ExampleCoverage
InstanceOf: $HRexCoverage
Description: "Example of a Coverage for a Member"
* id = "883210"
* meta.versionId = "1"
* meta.lastUpdated = "2020-10-28T09:26:23.217+00:00"
* identifier[memberid].system = "http://example.org/someOrg/identifiers/whatever"
* identifier[memberid].value = "1039399818"
* status = http://hl7.org/fhir/fm-status#active
* subscriberId = "97531"
* beneficiary.reference = "Patient/1"
* relationship = $CoverageRelationship#self
* payor.reference = "Organization/Payer1"
