[Previous Page - US Core Laboratory Result Observation](USCoreLaboratoryResultObservation.html)

The  
[US Core 3.1.1 Location]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-location.html) or
[US Core 6.1.0 Location]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-location.html) 
**SHALL** be used to record location/facility-specific information.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the  
[US Core 3.1.1 Location]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-location.html) or
[US Core 6.1.0 Location]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-location.html)
resource are:

{% include style_insert_table_blue.html %}

| R4 Element                     | Name                  | Cardinality | Type                                    |
|--------------------------------|-----------------------|:-----------:|-----------------------------------------|
|  Location.status               |  status               |     0..1    | code                                    |
|  Location.name                 |  name                 |     1..1    | string                                  |
|  Location.telecom              |  telecom              |     0..*    | ContactPoint                            |
|  Location.address              |  address              |     0..1    | Address                                 |
|  Location.address.line         |  line                 |     0..*    | string                                  |
|  Location.address.city         |  city                 |     0..1    | string                                  |
|  Location.address.state        |  state                |     0..1    | string                                  |
|  Location.address.postalCode   |  postalCode           |     0..1    | string                                  |
|  Location.managingOrganization |  managingOrganization |     0..1    | Reference(US Core Organization Profile) |

<i>[Table Definition](index.html#mapping-adjudicated-claims-encounter-and-prior-authorization-information)</i>


#### Example Location Resource

An example mapping of a Location resource is shown here:

<pre>
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
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: hl7east</p><p><b>meta</b>: </p><p><b>identifier</b>: 29</p><p><b>status</b>: active</p><p><b>name</b>: Health Level Seven International - Amherst</p><p><b>description</b>: HL7 Headquarters - East</p><p><b>telecom</b>: ph: (+1) 734-677-7777</p><p><b>address</b>: 3300 Washtenaw Avenue, Suite 227 Amherst MA 01002 USA </p><h3>Positions</h3><table class=\"grid\"><tr><td>-</td><td><b>Longitude</b></td><td><b>Latitude</b></td></tr><tr><td>*</td><td>-72.519854</td><td>42.373222</td></tr></table><p><b>managingOrganization</b>: Health Level Seven International</p></div>"
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
</pre>

Refer to the US Core Additional examples of the [US Core 3.1.1]({{site.data.fhir.ver.uscore3}}) or
[US Core 6.1.0]({{site.data.fhir.ver.uscore6}}) Implementation Guide for further examples of completed 
Location Profiles.



[Next Page - US Core Medication](USCoreMedication.html)
