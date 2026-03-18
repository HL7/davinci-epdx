# ExampleDocumentReference - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **ExampleDocumentReference**

## Example DocumentReference: ExampleDocumentReference

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [US Core DocumentReference Profile](http://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-documentreference.html)

**status**: Current

**type**: Summary of episode note

**category**: Clinical Note

**subject**: [Johnny Appleseed Male, DoB: 1986-01-01 ( Member Number)](Patient-1.md)

**date**: 2020-10-09 15:26:23+0000

**author**: [Organization Provider 1](Organization-ProviderOrg1.md)

**custodian**: [Organization Payer 1](Organization-Payer1.md)

> **content**

### Attachments

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** |
| * | application/pdf | [/Binary/1-pdf](https://simplifier.net/resolve?scope=hl7.fhir.us.core.3.1.1@3.1.1&canonical=http://hl7.org/fhir/us/core//Binary/1-pdf) | Uri where the data can be found = [base]/Binary/1-pdf or base64encode document and include in content.attachment.data element |

**format**: IHE.FormatCode.codesystem: (urn:ihe:iti:xds:2017:mimeTypeSufficient)



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "123456",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference"]
  },
  "status" : "current",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "34133-9"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category",
      "code" : "clinical-note"
    }]
  }],
  "subject" : {
    "reference" : "Patient/1"
  },
  "date" : "2020-10-09T15:26:23.217+00:00",
  "author" : [{
    "reference" : "Organization/ProviderOrg1"
  }],
  "custodian" : {
    "reference" : "Organization/Payer1"
  },
  "content" : [{
    "attachment" : {
      "contentType" : "application/pdf",
      "url" : "/Binary/1-pdf",
      "title" : "Uri where the data can be found = [base]/Binary/1-pdf\nor base64encode document and include in content.attachment.data element"
    },
    "format" : {
      "system" : "http://ihe.net/fhir/ValueSet/IHE.FormatCode.codesystem",
      "display" : "urn:ihe:iti:xds:2017:mimeTypeSufficient"
    }
  }]
}

```
