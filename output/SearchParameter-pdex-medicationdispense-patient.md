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

 
Returns dispensed prescriptions for a specific patient. NOTE: This Pdex SearchParameter definition extends the usage context of [capabilitystatement-expectation](http://hl7.org/fhir/R4/extension-capabilitystatement-expectation.html) extension to formally express implementer conformance expectations for these elements: 
* multipleAnd
* multipleOr
* comparator
* modifier
* chain.
 

## SearchParameter: PdexMedicationDispensePatient

** description** : Returns prescriptions for a specific patient
 **NOTE**: This Pdex SearchParameter definition extends the usage context of [capabilitystatement-expectation](http://hl7.org/fhir/R4/extension-capabilitystatement-expectation.html) extension to formally express implementer conformance expectations for these elements: - multipleAnd - multipleOr - comparator - modifier - chain 

** id** pdex-medicationdispense-patient

** url** : ** http://hl7.org/fhir/us/core/SearchParameter/pdex-medicationdispense-patient** 

** version** : 4.0.1

** name** : PdexMedicationDispensePatient

** derivedFrom** : http://hl7.org/fhir/SearchParameter/clinical-patient 

** status** : active

** experimental** False

** date** : 2020-07-01

** publisher** : HL7 International - Financial Management

** contact** : http://www.hl7.org/Special/committees/fm.cfm

** useContext** : 

** jurisdiction** : United States of America (the)  (Details : {urn:iso:std:iso:3166 code 'US' = 'United States of America', given as 'United States of America (the)'}) 

** code** : `patient` 

** base** :MedicationDispense

** type** : reference

** expression** : `MedicationDispense.subject.where(resolve() is Patient)` 

** xpath** : `f:MedicationDispense/f:subject` 

** xpathUsage** : normal

** multipleOr** : True (Conformance Expectation = MAY)

** multipleAnd** : True ( Conformance Expectation = MAY)



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
  "description" : "Returns dispensed prescriptions for a specific patient.\nNOTE: This Pdex SearchParameter definition extends the usage context of\n[capabilitystatement-expectation](http://hl7.org/fhir/R4/extension-capabilitystatement-expectation.html)\n extension to formally express implementer conformance expectations for these elements:\n - multipleAnd\n - multipleOr\n - comparator\n - modifier\n - chain.",
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
  "_multipleOr" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
      "valueCode" : "MAY"
    }]
  },
  "multipleAnd" : true,
  "_multipleAnd" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
      "valueCode" : "MAY"
    }]
  }
}

```
