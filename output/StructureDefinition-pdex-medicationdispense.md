# PDex MedicationDispense - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex MedicationDispense**

## Resource Profile: PDex MedicationDispense ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-medicationdispense | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:PdexMedicationDispense |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
Prescription Medications dispensed by a pharmacy to a health plan member and paid for in full, or in part, by the health plan 

**Usages:**

* Examples for this Profile: [MedicationDispense/1000001](MedicationDispense-1000001.md)
* CapabilityStatements using this Profile: [PDex Server CapabilityStatement with US core 6.1 support](CapabilityStatement-pdex-server-6-1.md) and [PDEX Server CapabilityStatement](CapabilityStatement-pdex-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/pdex-medicationdispense)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pdex-medicationdispense.csv), [Excel](StructureDefinition-pdex-medicationdispense.xlsx), [Schematron](StructureDefinition-pdex-medicationdispense.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdex-medicationdispense",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "fm"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "informative",
    "_valueCode" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
        "valueCanonical" : "http://hl7.org/fhir/us/davinci-pdex/ImplementationGuide/hl7.fhir.us.davinci-pdex"
      }]
    }
  }],
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-medicationdispense",
  "version" : "2.2.0",
  "name" : "PdexMedicationDispense",
  "title" : "PDex MedicationDispense",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-03-19T09:51:30-04:00",
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
  "description" : "Prescription Medications dispensed by a pharmacy to a health plan member and paid for in full, or in part, by the health plan",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "US",
      "display" : "United States of America"
    }]
  }],
  "copyright" : "Used by permission of HL7 International, all rights reserved Creative Commons License",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rx-dispense-rmim",
    "uri" : "http://www.hl7.org/v3/PORX_RM020070UV",
    "name" : "V3 Pharmacy Dispense RMIM"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationDispense",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationdispense|7.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationDispense",
      "path" : "MedicationDispense"
    },
    {
      "id" : "MedicationDispense.extension",
      "path" : "MedicationDispense.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationDispense.extension:refillNum",
      "path" : "MedicationDispense.extension",
      "sliceName" : "refillNum",
      "short" : "Refill number of this prescription",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/DispenseRefill"]
      }]
    },
    {
      "id" : "MedicationDispense.status",
      "path" : "MedicationDispense.status",
      "short" : "completed",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/medicationdispense-status"
      }
    },
    {
      "id" : "MedicationDispense.category",
      "path" : "MedicationDispense.category",
      "short" : "Type of dispense action",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/medicationdispense-category"
      }
    },
    {
      "id" : "MedicationDispense.medication[x]",
      "path" : "MedicationDispense.medication[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationDispense.medication[x]:medicationCodeableConcept",
      "path" : "MedicationDispense.medication[x]",
      "sliceName" : "medicationCodeableConcept",
      "short" : "Billing, service, product, or drug code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/FDANationalDrugCode"
      }
    },
    {
      "id" : "MedicationDispense.subject",
      "path" : "MedicationDispense.subject",
      "short" : "The patient who is prescribed the medication",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"],
        "_targetProfile" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
            "valueBoolean" : true
          }]
        }]
      }]
    },
    {
      "id" : "MedicationDispense.supportingInformation",
      "path" : "MedicationDispense.supportingInformation",
      "short" : "Information that supports the dispensing of the medication. Reference any US Core, HRex or PDex profile."
    },
    {
      "id" : "MedicationDispense.performer",
      "path" : "MedicationDispense.performer",
      "short" : "Who performed the dispense event"
    },
    {
      "id" : "MedicationDispense.performer.actor",
      "path" : "MedicationDispense.performer.actor",
      "short" : "Individual or device performing the dispense",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner",
        "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole",
        "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"],
        "_targetProfile" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
            "valueBoolean" : true
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
            "valueBoolean" : false
          }]
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
            "valueBoolean" : true
          }]
        }]
      }]
    },
    {
      "id" : "MedicationDispense.location",
      "path" : "MedicationDispense.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-location"]
      }]
    },
    {
      "id" : "MedicationDispense.type",
      "path" : "MedicationDispense.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v3-ActPharmacySupplyType"
      }
    },
    {
      "id" : "MedicationDispense.quantity",
      "path" : "MedicationDispense.quantity",
      "short" : "Billing, service, product, or drug code"
    },
    {
      "id" : "MedicationDispense.daysSupply",
      "path" : "MedicationDispense.daysSupply",
      "short" : "Medication expressed as a timing amount."
    },
    {
      "id" : "MedicationDispense.substitution",
      "path" : "MedicationDispense.substitution",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution.wasSubstituted",
      "path" : "MedicationDispense.substitution.wasSubstituted",
      "mustSupport" : true
    }]
  }
}

```
