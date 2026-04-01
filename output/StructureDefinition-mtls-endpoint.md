# mTLS Endpoint - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **mTLS Endpoint**

## Resource Profile: mTLS Endpoint ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/mtls-endpoint | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:MtlsEndpoint |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
The mTLS Endpoint is used to assist payers in defining their mTLS endpoints and discovering other Payer's mTLS endpoints 

**Usages:**

* Refer to this Profile: [mTLS Organization](StructureDefinition-mtls-organization.md)
* Examples for this Profile: [Payer-Payer Exchange](Endpoint-diamond-mtls-endpoint1.md) and [Payer-Payer Exchange](Endpoint-diamond-mtls-endpoint2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/mtls-endpoint)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mtls-endpoint.csv), [Excel](StructureDefinition-mtls-endpoint.xlsx), [Schematron](StructureDefinition-mtls-endpoint.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mtls-endpoint",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/mtls-endpoint",
  "version" : "2.2.0",
  "name" : "MtlsEndpoint",
  "title" : "mTLS Endpoint",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-03-31T21:00:10-04:00",
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
  "description" : "The mTLS Endpoint is used to assist payers in defining their mTLS endpoints and discovering other Payer's mTLS endpoints",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Endpoint",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Endpoint",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Endpoint",
      "path" : "Endpoint"
    },
    {
      "id" : "Endpoint.extension",
      "path" : "Endpoint.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Endpoint.extension:endpoint-usecase",
      "path" : "Endpoint.extension",
      "sliceName" : "endpoint-usecase",
      "short" : "Endpoint Usecase",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-endpoint-usecase"]
      }]
    },
    {
      "id" : "Endpoint.extension:fhir-ig",
      "path" : "Endpoint.extension",
      "sliceName" : "fhir-ig",
      "short" : "IGs supported",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-fhir-ig"]
      }]
    },
    {
      "id" : "Endpoint.extension:secure-exchange-artifacts",
      "path" : "Endpoint.extension",
      "sliceName" : "secure-exchange-artifacts",
      "short" : "Secure Exchange Artifacts",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-secureExchangeArtifacts"]
      }]
    },
    {
      "id" : "Endpoint.extension:trust-framework",
      "path" : "Endpoint.extension",
      "sliceName" : "trust-framework",
      "short" : "Trust Framework",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-trustFramework"]
      }]
    },
    {
      "id" : "Endpoint.extension:dynamic-registration",
      "path" : "Endpoint.extension",
      "sliceName" : "dynamic-registration",
      "short" : "Dynamic Registration",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-dynamicRegistration"]
      }]
    },
    {
      "id" : "Endpoint.extension:associated-servers",
      "path" : "Endpoint.extension",
      "sliceName" : "associated-servers",
      "short" : "Associated Servers",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-associatedServers"]
      }]
    },
    {
      "id" : "Endpoint.extension:access-control-mechanism",
      "path" : "Endpoint.extension",
      "sliceName" : "access-control-mechanism",
      "short" : "Access Control Mechanism",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-endpointAccessControlMechanism"]
      }]
    },
    {
      "id" : "Endpoint.extension:connection-type-version",
      "path" : "Endpoint.extension",
      "sliceName" : "connection-type-version",
      "short" : "Connection Type Version",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-connection-type-version"]
      }]
    },
    {
      "id" : "Endpoint.extension:endpoint-rank",
      "path" : "Endpoint.extension",
      "sliceName" : "endpoint-rank",
      "short" : "Preferred order for connecting to the endpoint",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-endpoint-rank"]
      }]
    },
    {
      "id" : "Endpoint.extension:verification-status",
      "path" : "Endpoint.extension",
      "sliceName" : "verification-status",
      "short" : "Verification Status",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-verification-status"]
      }]
    },
    {
      "id" : "Endpoint.extension:pdex-mtls-signedobject-extension",
      "path" : "Endpoint.extension",
      "sliceName" : "pdex-mtls-signedobject-extension",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-mtls-signedobject-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Endpoint.identifier",
      "path" : "Endpoint.identifier",
      "short" : "Unique identifier for Payer",
      "mustSupport" : true
    },
    {
      "id" : "Endpoint.identifier.extension:identifier-status",
      "path" : "Endpoint.identifier.extension",
      "sliceName" : "identifier-status",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-identifier-status"]
      }]
    },
    {
      "id" : "Endpoint.identifier.assigner",
      "path" : "Endpoint.identifier.assigner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/mtls-organization"]
      }]
    },
    {
      "id" : "Endpoint.status",
      "path" : "Endpoint.status",
      "fixedCode" : "active",
      "mustSupport" : true
    },
    {
      "id" : "Endpoint.connectionType",
      "path" : "Endpoint.connectionType",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/us/ndh/ValueSet/EndpointConnectionTypeVS"
      }
    },
    {
      "id" : "Endpoint.name",
      "path" : "Endpoint.name",
      "short" : "Payer-Payer Exchange",
      "mustSupport" : true
    },
    {
      "id" : "Endpoint.managingOrganization",
      "path" : "Endpoint.managingOrganization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/mtls-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Endpoint.contact.extension:contactpoint-availabletime",
      "path" : "Endpoint.contact.extension",
      "sliceName" : "contactpoint-availabletime",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-contactpoint-availabletime"]
      }]
    },
    {
      "id" : "Endpoint.payloadType",
      "path" : "Endpoint.payloadType",
      "max" : "1",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/us/ndh/ValueSet/EndpointPayloadTypeVS"
      }
    },
    {
      "id" : "Endpoint.payloadMimeType",
      "path" : "Endpoint.payloadMimeType",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/us/ndh/ValueSet/EndpointFhirMimeTypeVS"
      }
    }]
  }
}

```
