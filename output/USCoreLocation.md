# US Core Location - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**PDex Implementation, Actors, Interactions, Data Payloads and Methods**](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)
* [**Data Mapping**](datamapping.md)
* **US Core Location**

## US Core Location

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - US Core Laboratory Result Observation](USCoreLaboratoryResultObservation.md)

The
 [US Core 3.1.1 Location](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-location.html) or [US Core 6.1.0 Location](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-location.html) **SHALL** be used to record location/facility-specific information.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the
 [US Core 3.1.1 Location](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-location.html) or [US Core 6.1.0 Location](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-location.html) resource are:

| | | | |
| :--- | :--- | :--- | :--- |
| Location.status | status | 0..1 | code |
| Location.name | name | 1..1 | string |
| Location.telecom | telecom | 0..* | ContactPoint |
| Location.address | address | 0..1 | Address |
| Location.address.line | line | 0..* | string |
| Location.address.city | city | 0..1 | string |
| Location.address.state | state | 0..1 | string |
| Location.address.postalCode | postalCode | 0..1 | string |
| Location.managingOrganization | managingOrganization | 0..1 | Reference(US Core Organization Profile) |

*[Table Definition](index.md#mapping-adjudicated-claims-encounter-and-prior-authorization-information)*

#### Example Location Resource

An example mapping of a Location resource is shown here:

```

{
  "resourceType" : "Location",
  "id" : "hl7east",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-location"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Generated Narrative with Detailsid: hl7eastmeta: identifier: 29status: activename: Health Level Seven International - Amherstdescription: HL7 Headquarters - Easttelecom: ph: (+1) 734-677-7777address: 3300 Washtenaw Avenue, Suite 227 Amherst MA 01002 USA Positions<table class=\"grid\">-LongitudeLatitude*-72.51985442.373222</table>managingOrganization: Health Level Seven International</div>"
  },
  "identifier" : [
    {
      "system" : "http://www.acme.org/location",
      "value" : "29"
    }
  ],
  "status" : "active",
  "name" : "Health Level Seven International - Amherst",
  "description" : "HL7 Headquarters - East",
  "telecom" : [
    {
      "system" : "phone",
      "value" : "(+1) 734-677-7777"
    }
  ],
  "address" : {
    "line" : [
      "3300 Washtenaw Avenue, Suite 227"
    ],
    "city" : "Amherst",
    "state" : "MA",
    "postalCode" : "01002",
    "country" : "USA"
  },
  "position" : {
    "longitude" : -72.519854,
    "latitude" : 42.373222
  },
  "managingOrganization" : {
    "display" : "Health Level Seven International"
  }
}

```

Refer to the US Core Additional examples of the [US Core 3.1.1](http://hl7.org/fhir/us/core/3.1.1) or [US Core 6.1.0](http://hl7.org/fhir/us/core/STU6.1) Implementation Guide for further examples of completed Location Profiles.

[Next Page - US Core Medication](USCoreMedication.md)

