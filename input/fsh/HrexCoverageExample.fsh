Instance: ExampleCoverage
InstanceOf: hrex-coverage
Description: "Example of a Coverage for a Member"
* id = "883210"
* meta.versionId = "1"
* meta.profile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/hrex-coverage"
* meta.lastUpdated = "2020-10-28T09:26:23.217+00:00"
* identifier[0].system = "http://example.org/someOrg/identifiers/whatever"
* identifier[0].value = "1039399818"
* identifier[1].system = "http://example.org/new-payer/identifiers/coverage"
* identifier[1].value = "234567"
* status = http://hl7.org/fhir/fm-status#active
* subscriberId = "97531"
* beneficiary.reference = "Patient/1"
* payor.reference = "Organization/2"
