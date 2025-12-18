# US Core Organization - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**PDex Implementation, Actors, Interactions, Data Payloads and Methods**](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)
* [**Data Mapping**](datamapping.md)
* **US Core Organization**

## US Core Organization

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - US Core MedicationRequest](USCoreMedicationRequest.md)

When a Health Plan is documenting information about organizations in relation to the Member's Health History, they **SHOULD** use the [US Core 3.1.1 Organization](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-organization.html) or [US Core 6.1.0 Organization](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-organization.html) resource.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [US Core 3.1.1 Organization](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-organization.html) or [US Core 6.1.0 Organization](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-organization.html) resource are:

| | | | |
| :--- | :--- | :--- | :--- |
| Organization.identifier | identifier | 0..* | (Slice Definition) |
| Organization.identifier:All Slices.system | system | 0..1 | uri |
| Organization.identifier:All Slices.value | value | 0..1 | string |
| Organization.identifier:NPI | identifier:NPI | 0..1 | Identifier |
| Organization.identifier:NPI.system | system | 1..1 | uri |
| Organization.active | active | 1..1 | boolean |
| Organization.name | name | 1..1 | string |
| Organization.telecom | telecom | 0..* | ContactPoint |
| Organization.address | address | 0..* | Address |
| Organization.address.line | line | 0..4 | string |
| Organization.address.city | city | 0..1 | string |
| Organization.address.state | state | 0..1 | string |
| Organization.address.postalCode | postalCode | 0..1 | string |
| Organization.address.country | country | 0..1 | string |

#### Example Organization resource

An example mapping of an Organization resource is shown below:

```

{
  "resourceType" : "Organization",
  "id" : "saint-luke-w-endpoint",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n            Organization\n            \n                ID: 393872\n                Name: Saint Luke's Hospital of Kansas City \n                NPI: 1063494177\n                Phone:(816)932-2000\n                Address:4401 Wornall Rd,, MO, 64111\n            \n        </div>"
  },
  "contained" : [
    {
      "resourceType" : "Endpoint",
      "id" : "75",
      "status" : "active",
      "connectionType" : {
        "system" : "http://terminology.hl7.org/CodeSystem/endpoint-connection-type",
        "code" : "direct-project"
      },
      "name" : "Dr. Ronald Bone Direct Address",
      "managingOrganization" : {
        "reference" : "Organization/example-organization-2"
      },
      "payloadType" : [
        {
          "coding" : [
            {
              "system" : "urn:oid:1.3.6.1.4.1.19376.1.2.3",
              "code" : "urn:hl7-org:sdwg:ccda-structuredBody:1.1"
            }
          ]
        }
      ],
      "payloadMimeType" : [
        "text/xml"
      ],
      "address" : "mailto:Interoperability@DirectAddress.com"
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/sid/us-npi",
      "value" : "1063494177"
    },
    {
      "system" : "http://example.org/fhir/us/argo/sid/us-ein",
      "value" : "00-0000000"
    }
  ],
  "active" : true,
  "name" : "Saint Luke's Hospital of Kansas City",
  "telecom" : [
    {
      "system" : "phone",
      "value" : "(816)932-2000",
      "use" : "work"
    },
    {
      "system" : "other",
      "value" : "http://www.saintlukeshealthsystem.org/locations/saint-lukes-hospital-kansas-city",
      "use" : "work"
    }
  ],
  "address" : [
    {
      "text" : "3300 Washtenaw Avenue, Suite 227 Amherst MA 01002",
      "line" : [
        "4401 Wornall Rd,"
      ],
      "city" : "Amherst",
      "state" : "MA",
      "postalCode" : "64111"
    }
  ],
  "endpoint" : [
    {
      "reference" : "#75"
    }
  ]
}

```

[Next Page - US Core Patient](USCorePatient.md)

