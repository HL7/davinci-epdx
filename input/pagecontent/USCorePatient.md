[Previous Page - US Core Organization](USCoreOrganization.html)

The [US Core Patient profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html) **SHALL** be used to express a member's demographic information.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [US Core Patient profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html) are:

{% include style_insert_table_blue.html %}

| R4 Element                      | Name               | Cardinality | Type                                |
|---------------------------------|--------------------|:-----------:|-------------------------------------|
|  Patient.us-core-race           |  us-core-race      |     0..1    | (Complex)                           |
|  Patient.us-core-ethnicity      |  us-core-ethnicity |     0..1    | (Complex)                           |
|  Patient.us-core-birthsex       |  us-core-birthsex  |     0..1    | code                                |
|  Patient.identifier             |  identifier        |     1..*    | Identifier                          |
|  Patient.identifier.system      |  system            |     1..1    | uri                                 |
|  Patient.identifier.value       |  value             |     1..1    | string                              |
|  Patient.name                   |  name              |     1..*    | HumanName                           |
|  Patient.name.family            |  family            |     0..1    | string                              |
|  Patient.name.given             |  given             |     0..*    | string                              |
|  Patient.telecom                |  telecom           |     0..*    | ContactPoint                        |
|  Patient.telecom.system         |  system            |     1..1    | code                                |
|  Patient.telecom.value          |  value             |     1..1    | string                              |
|  Patient.telecom.use            |  use               |     0..1    | code                                |
|  Patient.gender                 |  gender            |     1..1    | code                                |
|  Patient.birthDate              |  birthDate         |     0..1    | date                                |
|  Patient.address                |  address           |     0..*    | Address                             |
|  Patient.address.line           |  line              |     0..*    | string                              |
|  Patient.address.city           |  city              |     0..1    | string                              |
|  Patient.address.state          |  state             |     0..1    | string                              |
|  Patient.address.postalCode     |  postalCode        |     0..1    | string                              |
|  Patient.address.period         |  period            |     0..1    | Period                              |
|  Patient.communication          |  communication     |     0..*    | BackboneElement                     |
|  Patient.communication.language |  language          |     1..1    | CodeableConcept                     |


<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>


The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the Patient resource from the CPCDS file are:

| US Core Element       | Must Support | Cardinality | CARIN-BB Element           | CPCDS Element Mapping or Implementer Note                                                                                                                                                                                                           |
|-----------------------|:------------:|:-----------:|----------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Patient.meta.lastUpdated |              |     0..1    | Patient.meta.lastUpdated   | [{"163":"Member Demographics Last Updated Date"}] |
| Patient.us-core-race  |       S      |     0..1    | Patient.us-core-race       | [{"128":"Race Code"}]  |
| Patient.us-core-ethnicity |       S      |     0..1    | Patient.us-core-ethnicity  | [{"129":"Ethnicity"}]  |
| Patient.us-core-birthsex |       S      |     0..1    | Patient.us-core-birthsex   | [{"153":"Birth Sex"}]  |
| Patient.identifier    |       S      |     1..*    | Patient.identifier         | [{"MMI=1":"Member id"}, {"191":"Unique Member ID"}, {"PatnAcctNr=109, MedRecNr=110":"Patient account number, Medical record number"}]. Note: Assign Payer System URI for Member Ids in Patient.identifier.system. Set Member Id in Patient.identifier.value |
| Patient.identifier.system |       S      |     1..1    |                            | Note: Assign Payer System URI for Member Ids in Patient.identifier.system  |
| Patient.identifier.value |       S      |     1..1    |                            | Note: Set Member Id in Patient.identifier.value |
| Patient.name          |       S      |     1..*    | Patient.name               | [{"130":"Patient Name"}] Note: Split Member Name into Patient.name.family, Patient.name.given  |
| Patient.name.family   |       S      |     0..1    |                            | Note: Split Member Name into Patient.name.family, Patient.name.given |
| Patient.name.given    |       S      |     0..*    |                            | Note: Split Member Name into Patient.name.family, Patient.name.given |
| Patient.telecom       |       S      |     0..*    |                            | Note: Provide contact information from member record, if available |
| Patient.telecom.system |       S      |     1..1    |                            | Note: phone \| fax \| email \| pager \| url \| sms \| other - if avaiable  |
| Patient.telecom.value |       S      |     1..1    |                            | Note: provide contact information from member record, if available |
| Patient.telecom.use   |       S      |     0..1    |                            | Note: provide home \| work \| temp \| old \| mobile if known  |
| Patient.gender   |       S      |     1..1    | Patient.gender             | [{"71":"Gender code"}] |
| Patient.birthDate     |       S      |     0..1    | Patient.birthDate          | [{"70":"Date of birth"}] |
| Patient.deceasedBoolean |              |             | Patient.deceasedBoolean    | [{"150":"Deceased"}]   |
| Patient.deceasedDateTime |              |             | Patient.deceasedDateTime   | [{"124":"Date of death"}] |
| Patient.address       |       S      |     0..*    |                            | Note: Provide address elements, if available |
| Patient.address.line  |       S      |     0..*    | Patient.address.line       | [{"158":"Street Address"}] |
| Patient.address.city  |       S      |     0..1    |                            | Note: Provide city, if available |
| Patient.address.district |              |     0..1    | Patient.address.district   | [{"125":"County"}]  |
| Patient.address.state |       S      |     0..1    | Patient.address.state      | [{"126":"State"}]  |
| Patient.address.postalCode |       S      |     0..1    | Patient.address.postalCode | [{"131":"Zip"}]  |
| Patient.address.country |              |     0..1    | Patient.address.country    | [{"127":"Country"}]  |
| Patient.address.period |       S      |     0..1    |                            | Note: Provide validity period for address, if available |
| Patient.communication |       S      |     0..*    |                            | . Note: Provide preferred communication language via language code below, if available |
| Patient.communication.language |       S      |     1..1    |                            | Note: Provide preferred communication language, if available |

<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

The Member Number will be entered in the **identifier** field. The code **MB**  **SHALL** be used to identify the member identifier.  See the example below:

<pre>
{
      "use" : "member",
      "type" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/v2/0203",
            "code" : "MB",
            "display" : "Member Number"
          }
        ],
        "text" : "Health Plan Member Number"
      },
      "system" : "http://plan.healthplan.com",
      "value" : "987654321"
    }
</pre>




#### Example Patient Resource

An example mapping of a Patient resource is shown here:

<pre>
{
  "resourceType" : "Patient",
  "id" : "example",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns="http://www.w3.org/1999/xhtml">
			<p>
				<b>Generated Narrative with Details</b>
			</p>
			<p>
				<b>id</b>: example</p>
			<p>
				<b>identifier</b>: Medical Record Number = 1032702 (USUAL)</p>
			<p>
				<b>identifier</b>: Health Plan Member Number = 987654321 (USUAL)</p>
			<p>
				<b>active</b>: true</p>
			<p>
				<b>name</b>: Arthur B. Dent </p>
			<p>
				<b>telecom</b>: ph: 555-555-5555(HOME), amy.shaw@example.com</p>
			<p>
				<b>gender</b>: </p>
			<p>
				<b>birthsex</b>: Male</p>
			<p>
				<b>birthDate</b>: Jan 22, 1953</p>
			<p>
				<b>address</b>: 6518 Meadowridge Rd, Elkridge, MD 21075 US </p>
			<p>
				<b>race</b>: White, American Indian or Alaska Native, Asian, Shoshone, Filipino</p>
			<p>
				<b>ethnicity</b>: Hispanic or Latino, Dominican, Mexican</p>
		</div>"
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race",
      "extension" : [
        {
          "url" : "ombCategory",
          "valueCoding" : {
            "system" : "urn:oid:2.16.840.1.113883.6.238",
            "code" : "2106-3",
            "display" : "White"
          }
        },
        {
          "url" : "ombCategory",
          "valueCoding" : {
            "system" : "urn:oid:2.16.840.1.113883.6.238",
            "code" : "1002-5",
            "display" : "American Indian or Alaska Native"
          }
        },
        {
          "url" : "ombCategory",
          "valueCoding" : {
            "system" : "urn:oid:2.16.840.1.113883.6.238",
            "code" : "2028-9",
            "display" : "Asian"
          }
        },
        {
          "url" : "detailed",
          "valueCoding" : {
            "system" : "urn:oid:2.16.840.1.113883.6.238",
            "code" : "1586-7",
            "display" : "Shoshone"
          }
        },
        {
          "url" : "detailed",
          "valueCoding" : {
            "system" : "urn:oid:2.16.840.1.113883.6.238",
            "code" : "2036-2",
            "display" : "Filipino"
          }
        },
        {
          "url" : "text",
          "valueString" : "Mixed"
        }
      ]
    },
    {
      "url" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity",
      "extension" : [
        {
          "url" : "ombCategory",
          "valueCoding" : {
            "system" : "urn:oid:2.16.840.1.113883.6.238",
            "code" : "2135-2",
            "display" : "Hispanic or Latino"
          }
        },
        {
          "url" : "detailed",
          "valueCoding" : {
            "system" : "urn:oid:2.16.840.1.113883.6.238",
            "code" : "2184-0",
            "display" : "Dominican"
          }
        },
        {
          "url" : "detailed",
          "valueCoding" : {
            "system" : "urn:oid:2.16.840.1.113883.6.238",
            "code" : "2148-5",
            "display" : "Mexican"
          }
        },
        {
          "url" : "text",
          "valueString" : "Hispanic or Latino"
        }
      ]
    },
    {
      "url" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex",
      "valueCode" : "M"
    }
  ],
  "identifier" : [
    {
      "use" : "member",
      "type" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/v2/0203",
            "code" : "MB",
            "display" : "Member Number"
          }
        ],
        "text" : "Health Plan Member Number"
      },
      "system" : "http://plan.healthplan.com",
      "value" : "987654321"
    },
    {
      "use" : "usual",
      "type" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/v2/0203",
            "code" : "MR",
            "display" : "Medical Record Number"
          }
        ],
        "text" : "Medical Record Number"
      },
      "system" : "http://hospital.smarthealthit.org",
      "value" : "1032702"
    }
  ],
  "active" : true,
  "name" : [
    {
      "family" : "Dent",
      "given" : [
        "Arthur",
        "B."
      ]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "555-555-5555",
      "use" : "home"
    },
    {
      "system" : "email",
      "value" : "arthur.dent@example.com"
    }
  ],
  "gender" : "male",
  "birthDate" : "1953-01-22",
  "address" : [
    {
      "line" : [
        "6518 Meadowridge Rd"
      ],
      "city" : "Elkridge",
      "state" : "MD",
      "postalCode" : "21075",
      "country" : "US"
    }
  ]
}
</pre>

Refer to the US Core Additional examples of the [US Core R4 Implementation Guide](http://hl7.org/fhir/us/core/index.html) for further examples of completed [Patient Profiles ](http://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html).



[Next Page - US Core Pediatric BMI for Age Observation](USCorePediatricBMIforAgeObservation.html)
