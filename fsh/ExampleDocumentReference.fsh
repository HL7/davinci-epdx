Instance: ExampleDocumentReference
InstanceOf: us-core-documentreference
Description: "Example of a US Core DocumentReference with a linked PDF document. The document could also be embedded."
* id = "123456"
* status = http://hl7.org/fhir/ValueSet/document-reference-status#current
// * type = http://hl7.org/fhir/us/core/ValueSet/us-core-documentreference-type#UNK
//* type = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK
* type =  http://loinc.org#51852-2
// * category = http://hl7.org/fhir/us/core/ValueSet/us-core-documentreference-category#clinical-note
* category = http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category#clinical-note
* subject.reference = "Patient/1"
* date = "2020-10-09T15:26:23.217+00:00"
* author.reference = "Organization/3"
* custodian.reference = "Organization/2"
// * content[0].format = http://hl7.org/fhir/ValueSet/formatcodes#urn:ihe:iti:xds:2017:mimeTypeSufficient
* content[0].format.system =  "http://ihe.net/fhir/ValueSet/IHE.FormatCode.codesystem"
* content[0].format.display = "urn:ihe:iti:xds:2017:mimeTypeSufficient"
* content[0].attachment.contentType = #application/pdf
* content[0].attachment.url = "/Binary/1-pdf"
* content[0].attachment.title = """
  Uri where the data can be found = [base]/Binary/1-pdf
  or base64encode document and include in content.attachment.data element
  """


Instance: ExampleDocRefProvenance
InstanceOf: pdex-provenance
Description: "Example of a PDex Provenance record for a PDF embedded or linked in a DocumentReference resource."
* id = "1000006"
* meta.versionId = "1"
* meta.lastUpdated = "2020-10-09T15:26:23.217+00:00"
* target[0].reference = "DocumentReference/123456"
* recorded = "2020-10-09T15:26:23.217+00:00"
* agent[0].type = http://hl7.org/fhir/us/core/CodeSystem/us-core-provenance-participant-type#transmitter "Transmitter"
* agent[0].who.reference = "Organization/3"
* entity.role = http://hl7.org/fhir/provenance-entity-role#source
* entity.what.display = "No reference available"
* entity.extension[sourceFormat].valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenancePayerDataSource#unstructured

