# mTLS Organization - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **mTLS Organization**

## Resource Profile: mTLS Organization ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/mtls-organization | *Version*:2.2.0 |
| * Standards status: *[Informative](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:MtlsOrganization |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License | |

 
The mTLS Organization record is used to identify the contact information for a Payer that owns a mTLS Endpoint, or is the managing organization tht administers the Endpoint. 

**Usages:**

* Refer to this Profile: [mTLS Endpoint](StructureDefinition-mtls-endpoint.md)
* Examples for this Profile: [Acme of CT](Organization-Acme.md) and [DiamondOnyxHealth](Organization-DiamondOnyxHealth1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.us.davinci-pdex|current/StructureDefinition/mtls-organization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mtls-organization.csv), [Excel](StructureDefinition-mtls-organization.xlsx), [Schematron](StructureDefinition-mtls-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mtls-organization",
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
  "url" : "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/mtls-organization",
  "version" : "2.2.0",
  "name" : "MtlsOrganization",
  "title" : "mTLS Organization",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-03-17T22:49:33-04:00",
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
  "description" : "The mTLS Organization record is used to identify the contact information for a Payer that owns a mTLS Endpoint, or is the managing organization tht administers the Endpoint.",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "short" : "Unique identifiers for Payer"
    },
    {
      "id" : "Organization.identifier.extension:identifier-status",
      "path" : "Organization.identifier.extension",
      "sliceName" : "identifier-status",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-identifier-status"]
      }]
    },
    {
      "id" : "Organization.identifier.type",
      "path" : "Organization.identifier.type",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:CLIA",
      "path" : "Organization.identifier",
      "sliceName" : "CLIA",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:NAIC",
      "path" : "Organization.identifier",
      "sliceName" : "NAIC",
      "mustSupport" : true
    },
    {
      "id" : "Organization.telecom",
      "path" : "Organization.telecom",
      "short" : "Provide URL(s) for member support as required on Member ID card",
      "min" : 1
    },
    {
      "id" : "Organization.telecom.extension:contactpoint-availabletime",
      "path" : "Organization.telecom.extension",
      "sliceName" : "contactpoint-availabletime",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-contactpoint-availabletime"]
      }]
    },
    {
      "id" : "Organization.telecom.system",
      "path" : "Organization.telecom.system",
      "min" : 1,
      "patternCode" : "url"
    },
    {
      "id" : "Organization.telecom.value",
      "path" : "Organization.telecom.value",
      "short" : "URL of Member Support as published on Member ID card"
    },
    {
      "id" : "Organization.contact.telecom.extension:contactpoint-availabletime",
      "path" : "Organization.contact.telecom.extension",
      "sliceName" : "contactpoint-availabletime",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-contactpoint-availabletime"]
      }]
    },
    {
      "id" : "Organization.endpoint",
      "path" : "Organization.endpoint",
      "short" : "Reference to Payer-to-Payer mTLS endpoint resource",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/mtls-endpoint"]
      }],
      "mustSupport" : true
    }]
  }
}

```
