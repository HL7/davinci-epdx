# PdexMedicationDispenseStatus - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PdexMedicationDispenseStatus**

## SearchParameter: PdexMedicationDispenseStatus 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/SearchParameter/pdex-medicationdispense-status | *Version*:2.1.1 | |
| *Standards status:*[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 2 | *Computable Name*:PdexMedicationDispenseStatus |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | | |

 
Status of the prescription dispense. NOTE: This SearchParameter definition extends the usage context of[capabilitystatement-expectation](http://hl7.org/fhir/R4/extension-capabilitystatement-expectation.html)extension to formally express implementer conformance expectations for these elements: 
* multipleAnd
* multipleOr
* comparator
* modifier
* chain.
 

## SearchParameter: PdexMedicationdispenseStatus

**description** : Status of the dispense prescription
 **NOTE**: This US Core SearchParameter definition extends the usage context of [capabilitystatement-expectation](http://hl7.org/fhir/R4/extension-capabilitystatement-expectation.html) extension to formally express implementer conformance expectations for these elements:
 - multipleAnd
 - multipleOr
 - comparator
 - modifier
 - chain
 

**id** pdex-medicationdispense-status

**url** : **http://hl7.org/fhir/us/davinci-pdex/SearchParameter/pdex-medicationdispense-status** 

**version** : 4.0.1

**name** : PdexeMedicationdispenseStatus

**derivedFrom** : http://hl7.org/fhir/SearchParameter/medications-status 

**status** : active

**experimental** False

**date** : 2020-07-01

**publisher** : HL7 International - Da Vinci Project

**contact** : http://www.hl7.org/Special/committees/fm

**useContext** : 

**jurisdiction** : United States of America (the) (Details : {urn:iso:std:iso:3166 code 'US' = 'United States of America', given as 'United States of America (the)'}) 

**code** : `status` 

**base** :MedicationDispense

**type** : token

**expression** : `MedicationDispense.status` 

**xpath** : `f:MedicationDispense/f:status` 

**xpathUsage** : normal

**multipleOr** : True (Conformance Expectation = SHALL)

**multipleAnd** : True ( Conformance Expectation = MAY)



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "pdex-medicationdispense-status",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "fm"
    }
  ],
  "url" : "http://hl7.org/fhir/us/davinci-pdex/SearchParameter/pdex-medicationdispense-status",
  "version" : "2.1.1",
  "name" : "PdexMedicationDispenseStatus",
  "derivedFrom" : "http://hl7.org/fhir/SearchParameter/medications-status",
  "status" : "active",
  "experimental" : false,
  "date" : "2020-07-01T21:51:57.986692Z",
  "publisher" : "HL7 International / Financial Management",
  "contact" : [
    {
      "name" : "HL7 International / Financial Management",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.hl7.org/Special/committees/fm"
        },
        {
          "system" : "email",
          "value" : "fm@lists.HL7.org"
        }
      ]
    },
    {
      "name" : "Mark Scrimshire (mark.scrimshire@onyxhealth.io)",
      "telecom" : [
        {
          "system" : "email",
          "value" : "mailto:mark.scrimshire@onyxhealth.io"
        }
      ]
    },
    {
      "name" : "HL7 International - Financial Management",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.hl7.org/Special/committees/fm"
        }
      ]
    }
  ],
  "description" : "Status of the prescription dispense.\nNOTE: This SearchParameter definition extends the usage context of\n[capabilitystatement-expectation](http://hl7.org/fhir/R4/extension-capabilitystatement-expectation.html)\n extension to formally express implementer conformance expectations for these elements:\n - multipleAnd\n - multipleOr\n - comparator\n - modifier\n - chain.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "US",
          "display" : "United States of America"
        }
      ]
    }
  ],
  "code" : "status",
  "base" : ["MedicationDispense"],
  "type" : "token",
  "expression" : "MedicationDispense.status",
  "xpathUsage" : "normal",
  "multipleOr" : true,
  "_multipleOr" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }
    ]
  },
  "multipleAnd" : true,
  "_multipleAnd" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }
    ]
  }
}

```
