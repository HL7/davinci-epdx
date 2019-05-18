---
title: 3-6-1 US Core Patient
layout: default
active: 3-6-1 US Core Patient
---

An example mapping of Health Plan data for Members to the [US Core Patient profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-patient.html) is shown below:

| Line | PayerSource | CMS BB 2.0 Field      | Data Descriptor        | FHIR Profile    | Profile Field               | ValueSet                                                       | Notes                |
|------|-------------|-----------------------|------------------------|-----------------|-----------------------------|----------------------------------------------------------------|----------------------|
| 1.1  | Member      | BENE_ID               | Patientid              | US Core Patient | .identifier.value           |                                                                |                      |
| 2.1  | Member      | DOB_DT                | Date of birth          | US Core Patient | .birthDate                  |                                                                |                      |
| 3.1  | Member      |                       | Date of Death          | US Core Patient | .deceased[dateTime]         |                                                                |                      |
| 4.1  | Member      | BENE_COUNTY_CD        | County                 | US Core Patient | .contact.address.district   |                                                                |                      |
| 5.1  | Member      | BENE_STATE_CD         | State                  | US Core Patient | .contact.address.state      |                                                                |                      |
| 6.1  | Member      | BENE_CNTY_CD          | Country                | US Core Patient | .contact.address.country    |                                                                |                      |
| 7.1  | Member      | BENE_RACE_CD          | Race code              | US Core Patient | .us-core-race               |                                                                |                      |
| 8.1  | Member      |                       | Ethnicity              | US Core Patient | .us-core-ethnicity          |                                                                |                      |
| 9.1  | Member      | GNDR_CD               | Gender code            | US Core Patient | .gender                     | http://build.fhir.org/valueset-administrative-gender.html      |                      |
| 10.1 | Member      |                       | Name                   | US Core Patient | .name                       |                                                                |                      |
| 11.1 | Member      | BENE_MLG_CNTCT_ZIP_CD | Zip code               | US Core Patient | .contact.address.postalCode |                                                                |                      |
| 7.1  | Claim       |                       | Patient account number | US Core Patient | .identifier.value           |                                                                |                      |
| 8.1  | Claim       |                       | Medical record number  | US Core Patient | .identifier.value           |                                                                |                      |
| F.1  | R4          |                       | Birth sex              | US Core Patient | .us-core-birthsex           | http://build.fhir.org/ig/HL7/US-Core-R4/ValueSet-birthsex.html | UNK                  |
| F.2  | R4          |                       | Telecom                | US Core Patient | .telecom                    |                                                                | Provide If Available |
| F.3  | R4          |                       | Language               | US Core Patient | .communication              |                                                                | Provide If Available |


Where an entry is provided in the CMS BB2.0 FIELD column the definition of the field can be reviewed using the following URL:

https://bluebutton.cms.gov/resources/variables/{CMS_BB2.0_FIELD}/

Where {CMS_BB2.0_FIELD} is replaced with the Field value in lower case. For example:

https://bluebutton.cms.gov/resources/variables/bene_id/
https://bluebutton.cms.gov/resources/variables/dob_dt/

#### 3-6-1-1 Example Patient Resource

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
      "use" : "subscriber",
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

Refer to the US Core Additional examples of the [US Core R4 Implementation Guide](https://build.fhir.org/ig/HL7/US-Core-R4/) for further examples of completed [Patient Profiles ](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-patient.html).

