[Previous Page - US Core Practitioner](USCorePractitioner.html)

The [US Core 3.1.1 PractitionerRole]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-practitionerrole.html) or
[US Core 6.1.0 PractitionerRole]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-practitionerrole.html)
**SHALL** be used to record information about the roles that practitioners take in providing services to their patients.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the
[US Core 3.1.1 PractitionerRole]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-practitionerrole.html) or
[US Core 6.1.0 PractitionerRole]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-practitionerrole.html)
resource are:

{% include style_insert_table_blue.html %}

| R4 Element                       | Name          | Cardinality | Type                                    |
|----------------------------------|---------------|:-----------:|-----------------------------------------|
|  PractitionerRole.practitioner   |  practitioner |     1..1    | Reference(US Core Practitioner Profile) |
|  PractitionerRole.organization   |  organization |     1..1    | Reference(US Core Organization Profile) |
|  PractitionerRole.code           |  code         |     0..*    | CodeableConcept                         |
|  PractitionerRole.specialty      |  specialty    |     0..*    | CodeableConcept                         |
|  PractitionerRole.location       |  location     |     0..*    | Reference(Location)                     |
|  PractitionerRole.telecom        |  telecom      |     0..*    | ContactPoint                            |
|  PractitionerRole.telecom.system |  system       |     1..1    | code                                    |
|  PractitionerRole.telecom.value  |  value        |     1..1    | string                                  |
|  PractitionerRole.endpoint       |  endpoint     |     0..*    | Reference(Endpoint)                     |

<i>[Table Definition](index.html#mapping-adjudicated-claims-encounter-and-prior-authorization-information)</i>

#### Example PractitionerRole Resource

An example mapping of an PractitionerRole resource is shown here:

<pre>
{
  "resourceType" : "Bundle",
  "id" : "66c8856b-ba11-4876-8aa8-467aad8c11a2",
  "type" : "searchset",
  "total" : 1,
  "link" : [
    {
      "relation" : "self",
      "url" : "http://52.90.126.238:8080/fhir/baseDstu3/PractitionerRole?_id=PractitionerRole-1&_include=PractitionerRole%3Apractitioner&_include=PractitionerRole%3Aendpoint"
    }
  ],
  "entry" : [
    {
      "fullUrl" : "http://52.90.126.238:8080/fhir/baseDstu3/PractitionerRole/PractitionerRole-1",
      "resource" : {
        "resourceType" : "PractitionerRole",
        "id" : "PractitionerRole-1",
        "meta" : {
          "profile" : [
            "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: PractitionerRole-1</p><p><b>meta</b>: </p><p><b>practitioner</b>: <a href=\"Practitioner/Practitioner-1011\">Brenda Jennings Richard MD</a></p><p><b>organization</b>: <a href=\"Organization-acme-lab.html\">Acme Lab. Generated Summary: id: acme-lab; 1144221847, 2523423456; active; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/organization-type prov}\">Healthcare Provider</span>; name: Acme Labs; ph: (+1) 734-677-7777, hq@acme.org</a></p><p><b>code</b>: Primary Care <span style=\"background: LightGoldenRodYellow\">(Details : {http://nucc.org/provider-taxonomy code '261QP2300X' = 'Primary Care', given as 'Primary Care'})</span></p><p><b>specialty</b>: General Practice <span style=\"background: LightGoldenRodYellow\">(Details : {http://nucc.org/provider-taxonomy code '208D00000X' = 'General Practice', given as 'General Practice'})</span></p><p><b>location</b>: <a href=\"Location-hl7east.html\">Health Level Seven International. Generated Summary: id: hl7east; 29; status: active; name: Health Level Seven International - Amherst; description: HL7 Headquarters - East; ph: (+1) 734-677-7777</a></p><p><b>endpoint</b>: </p><ul><li><a href=\"http://52.90.126.238:8080/fhir/baseDstu3/Endpoint/Endpoint-71\">Westwood Physicians Organization ADT</a></li><li><a href=\"http://52.90.126.238:8080/fhir/baseDstu3/Endpoint/Endpoint-71\">Brenda.Jennings.Richard.MD@direct.example.org</a></li></ul></div>"
        },
        "practitioner" : {
          "reference" : "Practitioner/Practitioner-1011",
          "display" : "Brenda Jennings Richard MD"
        },
        "organization" : {
          "reference" : "Organization/acme-lab",
          "display" : "Acme Lab"
        },
        "code" : [
          {
            "coding" : [
              {
                "system" : "http://nucc.org/provider-taxonomy",
                "code" : "261QP2300X",
                "display" : "Primary Care"
              }
            ]
          }
        ],
        "specialty" : [
          {
            "coding" : [
              {
                "system" : "http://nucc.org/provider-taxonomy",
                "code" : "208D00000X",
                "display" : "General Practice"
              }
            ]
          }
        ],
        "location" : [
          {
            "reference" : "Location/hl7east",
            "display" : "Health Level Seven International"
          }
        ],
        "endpoint" : [
          {
            "reference" : "http://52.90.126.238:8080/fhir/baseDstu3/Endpoint/Endpoint-71",
            "display" : "Westwood Physicians Organization ADT"
          },
          {
            "reference" : "http://52.90.126.238:8080/fhir/baseDstu3/Endpoint/Endpoint-71",
            "display" : "Brenda.Jennings.Richard.MD@direct.example.org"
          }
        ]
      },
      "search" : {
        "mode" : "match"
      }
    },
    {
      "fullUrl" : "http://52.90.126.238:8080/fhir/baseDstu3/Practitioner/Practitioner-1011",
      "resource" : {
        "resourceType" : "Practitioner",
        "id" : "Practitioner-1011",
        "meta" : {
          "profile" : [
            "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: Practitioner-1011</p><p><b>meta</b>: </p><p><b>identifier</b>: US Social Security Number = 000001011 (OFFICIAL), US National Provider Identifier = 9999991011 (OFFICIAL), Michigan Common Key Service Identifier = d46f70565a1042f6a6ece48dd81b408f (OFFICIAL)</p><p><b>name</b>: Brenda Jennings Richard </p><p><b>telecom</b>: ph: 313-555-6868(HOME), ph: 313-555-6443(WORK)</p><p><b>address</b>: 346 W Plum Avenu Dearborn MI 48123</p><p><b>gender</b>: female</p><p><b>birthDate</b>: Nov 15, 1976</p><h3>Qualifications</h3><table class=\"grid\"><tr><td>-</td><td><b>Identifier</b></td><td><b>Code</b></td><td><b>Issuer</b></td></tr><tr><td>*</td><td>Michigan Medical License = LARA-1011 (OFFICIAL)</td><td>Medical Doctor <span style=\"background: LightGoldenRodYellow\">(Details : {http://michigan.gov/lara/license-type code '4305' = '4305', given as 'Medical Doctor'})</span></td><td>Michigan Department of Licensing and Regulatory Affairs</td></tr></table></div>"
        },
        "identifier" : [
          {
            "use" : "official",
            "type" : {
              "coding" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/identifier-type",
                  "code" : "SB",
                  "display" : "Social Beneficiary Identifier"
                }
              ],
              "text" : "US Social Security Number"
            },
            "system" : "http://hl7.org/fhir/sid/us-ssn",
            "value" : "000001011"
          },
          {
            "use" : "official",
            "type" : {
              "coding" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code" : "PRN",
                  "display" : "Provider number"
                }
              ],
              "text" : "US National Provider Identifier"
            },
            "system" : "http://hl7.org/fhir/sid/us-npi",
            "value" : "9999991011"
          },
          {
            "use" : "official",
            "type" : {
              "coding" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/identifier-type",
                  "code" : "SB",
                  "display" : "Social Beneficiary Identifier"
                }
              ],
              "text" : "Michigan Common Key Service Identifier"
            },
            "system" : "http://mihin.org/fhir/cks",
            "value" : "d46f70565a1042f6a6ece48dd81b408f"
          }
        ],
        "name" : [
          {
            "family" : "Richard",
            "given" : [
              "Brenda",
              "Jennings"
            ],
            "suffix" : [
              "MD"
            ]
          }
        ],
        "telecom" : [
          {
            "system" : "phone",
            "value" : "313-555-6868",
            "use" : "home"
          },
          {
            "system" : "phone",
            "value" : "313-555-6443",
            "use" : "work"
          }
        ],
        "address" : [
          {
            "text" : "346 W Plum Avenu Dearborn MI 48123",
            "line" : [
              "346 W Plum Avenue"
            ],
            "city" : "Dearborn",
            "state" : "MI",
            "postalCode" : "48126"
          }
        ],
        "gender" : "female",
        "birthDate" : "1976-11-15",
        "qualification" : [
          {
            "identifier" : [
              {
                "use" : "official",
                "type" : {
                  "coding" : [
                    {
                      "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                      "code" : "MD",
                      "display" : "Medical License number"
                    }
                  ],
                  "text" : "Michigan Medical License"
                },
                "system" : "http://michigan.gov/fhir/medical-license",
                "value" : "LARA-1011",
                "assigner" : {
                  "display" : "State of Michigan"
                }
              }
            ],
            "code" : {
              "coding" : [
                {
                  "system" : "http://michigan.gov/lara/license-type",
                  "code" : "4305",
                  "display" : "Medical Doctor"
                }
              ]
            },
            "issuer" : {
              "display" : "Michigan Department of Licensing and Regulatory Affairs"
            }
          }
        ]
      },
      "search" : {
        "mode" : "include"
      }
    },
    {
      "fullUrl" : "http://52.90.126.238:8080/fhir/baseDstu3/Endpoint/Endpoint-71",
      "resource" : {
        "resourceType" : "Endpoint",
        "id" : "71",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: 71</p><p><b>status</b>: active</p><p><b>connectionType</b>: Direct Project (Details: http://terminology.hl7.org/CodeSystem/endpoint-connection-type code direct-project = 'Direct Project', stated as 'null')</p><p><b>name</b>: Brenda.Jennings.Richard.MD@direct.example.org</p><p><b>managingOrganization</b>: <a href=\"Organization-acme-lab.html\">Generated Summary: id: acme-lab; 1144221847, 2523423456; active; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/organization-type prov}\">Healthcare Provider</span>; name: Acme Labs; ph: (+1) 734-677-7777, hq@acme.org</a></p><p><b>payloadType</b>: urn:hl7-org:sdwg:ccda-structuredBody:1.1 <span style=\"background: LightGoldenRodYellow\">(Details : {urn:oid:1.3.6.1.4.1.19376.1.2.3 code 'urn:hl7-org:sdwg:ccda-structuredBody:1.1' = 'urn:hl7-org:sdwg:ccda-structuredBody:1.1)</span></p><p><b>payloadMimeType</b>: text/xml</p><p><b>address</b>: <a href=\"mailto:Brenda.Jennings.Richard.MD@direct.example.org\">Brenda.Jennings.Richard.MD@direct.example.org</a></p></div>"
        },
        "status" : "active",
        "connectionType" : {
          "system" : "http://terminology.hl7.org/CodeSystem/endpoint-connection-type",
          "code" : "direct-project"
        },
        "name" : "Brenda.Jennings.Richard.MD@direct.example.org",
        "managingOrganization" : {
          "reference" : "Organization/acme-lab"
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
        "address" : "mailto:Brenda.Jennings.Richard.MD@direct.example.org"
      },
      "search" : {
        "mode" : "include"
      }
    }
  ]
}
</pre>

Refer to the US Core Additional examples of the [US Core 3.1.1]({{site.data.fhir.ver.uscore3}}) or
[US Core 6.1.0]({{site.data.fhir.ver.uscore6}}) Implementation Guide for further examples of completed
PractitionerRole Profiles.



[Next Page - PDex Prior Authorization](PDexPriorAuthorization.html)
