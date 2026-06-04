# PdexMedicationDispensePatient - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PdexMedicationDispensePatient**

## SearchParameter: PdexMedicationDispensePatient 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/SearchParameter/pdex-medicationdispense-patient | *Version*:2.2.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:PdexMedicationDispensePatient |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

 
Returns dispensed prescriptions for a specific patient. 

SearchParameter: PdexMedicationDispensePatient — Returns dispensed prescriptions for a specific patient.



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "pdex-medicationdispense-patient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "fm"
  }],
  "url" : "http://hl7.org/fhir/us/davinci-pdex/SearchParameter/pdex-medicationdispense-patient",
  "version" : "2.2.0",
  "name" : "PdexMedicationDispensePatient",
  "derivedFrom" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
  "status" : "active",
  "experimental" : false,
  "date" : "2020-07-01T21:51:58.017219Z",
  "publisher" : "HL7 International / Financial Management",
  "contact" : [{
    "name" : "HL7 International / Financial Management",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.hl7.org/Special/committees/fm"
    },
    {
      "system" : "email",
      "value" : "fm@lists.HL7.org"
    }]
  },
  {
    "name" : "Mark Scrimshire (mark.scrimshire@onyxhealth.io)",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:mark.scrimshire@onyxhealth.io"
    }]
  },
  {
    "name" : "HL7 International - Financial Management",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.hl7.org/Special/committees/fm"
    }]
  }],
  "description" : "Returns dispensed prescriptions for a specific patient.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "code" : "patient",
  "base" : ["MedicationDispense"],
  "type" : "reference",
  "expression" : "MedicationDispense.subject.where(resolve() is Patient)",
  "xpathUsage" : "normal",
  "target" : ["Patient", "Group"],
  "multipleOr" : true,
  "multipleAnd" : true
}

```
