# PDex Provenance - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **PDex Provenance**

## Resource Profile: PDex Provenance ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provenance | *Version*:2.1.1 |
| *Standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:Provenance |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
Provenance is provided by the payer to identify the source of the information, whether the data came via a clinical record or a claim record and whether the data was subject to manual transcription or other interpretive transformation. This profile adds PayerSourceFormat as an extension on the entity base element. 

**Usages:**

* Examples for this Profile: [Provenance/1000001](Provenance-1000001.md), [Provenance/1000002](Provenance-1000002.md), [Provenance/1000003](Provenance-1000003.md), [Provenance/1000004](Provenance-1000004.md)...Show 5 more,[Provenance/1000005](Provenance-1000005.md),[Provenance/1000006](Provenance-1000006.md),[Provenance/1000016](Provenance-1000016.md),[Provenance/1000017](Provenance-1000017.md)and[Provenance/1000101](Provenance-1000101.md)
* CapabilityStatements using this Profile: [PDex Server CapabilityStatement with US core 6.1 support](CapabilityStatement-pdex-server-6-1.md) and [PDEX Server CapabilityStatement](CapabilityStatement-pdex-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/pdex-provenance)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pdex-provenance.csv), [Excel](StructureDefinition-pdex-provenance.xlsx), [Schematron](StructureDefinition-pdex-provenance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdex-provenance",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "fm"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "informative",
      "_valueCode" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical" : "http://hl7.org/fhir/us/davinci-pdex/ImplementationGuide/hl7.fhir.us.davinci-pdex"
          }
        ]
      }
    }
  ],
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provenance",
  "version" : "2.1.1",
  "name" : "Provenance",
  "title" : "PDex Provenance",
  "status" : "active",
  "experimental" : true,
  "date" : "2025-12-17T14:48:28-05:00",
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
  "description" : "Provenance is provided by the payer to identify the source of the information, whether the data came via a clinical record or a claim record and whether the data was subject to manual transcription or other interpretive transformation. This profile adds PayerSourceFormat as an extension on the entity base element.",
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
  "copyright" : "Used by permission of HL7 International, all rights reserved Creative Commons License",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
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
      "identity" : "w3c.prov",
      "uri" : "http://www.w3.org/ns/prov",
      "name" : "W3C PROV"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "fhirauditevent",
      "uri" : "http://hl7.org/fhir/auditevent",
      "name" : "FHIR AuditEvent Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Provenance",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-provenance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Provenance",
        "path" : "Provenance"
      },
      {
        "id" : "Provenance.agent",
        "path" : "Provenance.agent"
      },
      {
        "id" : "Provenance.agent.type",
        "path" : "Provenance.agent.type",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/us/core/ValueSet/us-core-provenance-participant-type"
        }
      },
      {
        "id" : "Provenance.agent.who",
        "path" : "Provenance.agent.who",
        "short" : "Provide US Core Organization. If no Organization provide US Core Practitioner",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization",
              "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
            ],
            "_targetProfile" : [
              {
                "extension" : [
                  {
                    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
                    "valueBoolean" : true
                  }
                ]
              },
              {
                "extension" : [
                  {
                    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
                    "valueBoolean" : false
                  }
                ]
              }
            ]
          }
        ]
      },
      {
        "id" : "Provenance.agent:ProvenanceAuthor",
        "path" : "Provenance.agent",
        "sliceName" : "ProvenanceAuthor"
      },
      {
        "id" : "Provenance.agent:ProvenanceAuthor.type",
        "path" : "Provenance.agent.type",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/ProvenanceAgentType"
        }
      },
      {
        "id" : "Provenance.agent:ProvenanceAuthor.who",
        "path" : "Provenance.agent.who",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization",
              "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
            ],
            "_targetProfile" : [
              {
                "extension" : [
                  {
                    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
                    "valueBoolean" : true
                  }
                ]
              },
              {
                "extension" : [
                  {
                    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
                    "valueBoolean" : false
                  }
                ]
              }
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Provenance.agent:ProvenanceTransmitter",
        "path" : "Provenance.agent",
        "sliceName" : "ProvenanceTransmitter"
      },
      {
        "id" : "Provenance.agent:ProvenanceTransmitter.who",
        "path" : "Provenance.agent.who",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization",
              "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
            ],
            "_targetProfile" : [
              {
                "extension" : [
                  {
                    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
                    "valueBoolean" : true
                  }
                ]
              },
              {
                "extension" : [
                  {
                    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
                    "valueBoolean" : false
                  }
                ]
              }
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Provenance.entity.extension",
        "path" : "Provenance.entity.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Provenance.entity.extension:sourceFormat",
        "path" : "Provenance.entity.extension",
        "sliceName" : "sourceFormat",
        "short" : "Entity Source format that target resource was created from",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/ProvenanceSourceFrom"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Provenance.entity.extension:sourceFormat.value[x]",
        "path" : "Provenance.entity.extension.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/us/davinci-pdex/ValueSet/ProvenancePayerSourceFormat"
        }
      }
    ]
  }
}

```
