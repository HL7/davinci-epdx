[Previous Page - Handling Data Provenance](HandlingDataProvenance.html)

Notes:
1. Payers **SHOULD** utilize the FHIR API to exchange patient information Payer-to-Payer at the request of the member.
2. Payers **SHALL** include all member related documents as the contents of, or links from appropriate instances of the DocumentReference resource (unless these documents are being exchanged by another method.


### Operation $member-match on Patient

Find Member using Patient and Coverage Resources. 

It is recognized that the $member-match function is an operation that can be the pre-cursor to many different data exchange use cases between Payers and other with other organizations, such as providers. Consequently the $member-match operation has been moved to the HL7 Da Vinci Health Record Exchange (HRex) Implementation Guide. This IG references the $member-match operation and associated operations as defined in the HRex IG. Please refer to the [Authorization with Consent section](http://build.fhir.org/ig/HL7/davinci-ehrx/consent-oauth.html)) of the [HRex IG](http://build.fhir.org/ig/HL7/davinci-ehrx/index.html) for full details. 

OPERATION: Find member using search driven by member patient and coverage information.

When a member switches from one plan to another the member has the option to request their data to be passed to their new health plan. A pre-requisite for this request is that the member has the information from their prior coverage, or member identity card, such as member number, subscriber number, group id, plan id. If the member does not have this information and does not have their prior coverage card they would be required to contact their prior plan to obtain this information. 
 
The new Health Plan **SHALL** enable an enrolling member to provide the coverage details for their prior health plan. The new Health Plan **SHALL** create the following resources that will be compiled into a Parameter Resource and submitted to the $member-match operation on the Patient FHIR endpoint for the old health plan:

- US Core Patient (Containing Member demographics)
- Coverage (details of prior health plan coverage provided by the member, typically from their Health Plan coverage card)
- Coverage (details of new or prospective health plan coverage, provided by the health plan based upon the member's enrollment)
- Consent (Information indicating whether a member wishes to exchange all information, or only information that is not additionally protected such as 42.CFR Part 2 or state-specific sensitive data categories.)

The New Health Plan Coverage record provides information for the prior Health Plan to determine the identity of their member in the new health plan, enabling them to identify the member in the new Health Plan for any future communications.

The Health Plan should add the unique member identifier to the received Patient record.

The Old Health Plan should return the following data:

- The unique member identifier added to the Patient.identifier in the Patient resource submitted by the new health plan.
- (Optional) The new health plan coverage resource.

Only one Patient and (optionally) one Coverage record are returned.

Reference Implementation Information: [Member-Match Reference Implementation](https://confluence.hl7.org/display/DVP/Member-Match+Reference+Implementation)

A Consent Resource **SHOULD** be provided as part of a $member-access transaction sent to the prior Payer. The resource is profiled in the [Health Record Exchange (HRex) IG](http://hl7.org/fhir/us/davinci-hrex/2020Sep): [http://hl7.org/fhir/us/davinci-hrex/](http://hl7.org/fhir/us/davinci-hrex/2020Sep). The consent resource identifies the categories of data to be exchanged with the member's permission. There are two categories of data that can be exchanged:

1. Everything: All data with no restrictions.
2. Non-Additionally protected data classes. 

The CMS Interoperability Rule defines a set of data that  can be excluded from data sharing. The restricted data classes are defined as:
- Sensitive data classes identified in 42.CFR Part 2
- Data identified as sensitive in state regulations, such as sexual and mental health data. 

These restricted data classes are excluded from the Non-Additionally protected data class.

In situations where a data holder is unable to segregate data into the two data classes then no data should be released when a member has requested only Non-Additionally protected data be exchanged.

### Notes

Providing a directory of FHIR Endpoints that support the $member-match operation for each health plan is outside the scope of this operation.

Interactions between Payers **SHALL** be conducted under mutually authenticated TLS. These interactions will also leverage the [HL7 UDAP B2B](http://hl7.org/fhir/us/udap-securityb2b.html) specification.

### Operation $member-match:

    URL: POST [base]/Patient/$member-match

### Patient.identifier

When the New Health Plan creates an OldCoverage parameter where the Coverage resource has a Coverage.identifier and the identifier.type is "MB". The "MB" value is taken from the http://terminology.hl7.org/CodeSystem/v2-0203 value set.

When the Old Health Plan returns the Patient Record they **SHALL** add a Patient.identifier with the Patient.identifier.type = "UMB" (Unique Member Identifier). This is a new type value.

A code system will be created with a value set with a single entry "UMB" and will be referenced by the value set for identifier.

### Unique Member Identifier

The old Health Plan **SHALL** return a unique member identifier and a corresponding system value that identifies the plan. 

The member identifier **SHALL** be either the internal unique identifier, or an identifier that is mapped one-to-one to the Health Plan's unique member identifier.

### Parameters

{% include style_insert_table_blue.html %}

| Use | Name | Cardinality | Type | Binding | Documentation |
| IN | resource | 1..1 | Parameter |  | 
Use this to provide a set of coverage, beneficiary and consent details for the match operation to search for a unique member record (e.g. POST a parameter with Patient, Old Coverage, New Coverage and Consent to Patient/$member-match). |
| OUT | return | 1..1 | Parameter |  |	
The returned Parameter resource will contain the New Plan's Coverage record and their Member Patient record with the ADDITION of an identifier of type "UMB" that represents the Unique identifier to identify the member records at the old health plan. If the operation failed to find a unique match then a BadRequest status code is returned. (e.g. 422 - Unprocessable Entity). |

The response from a successful $member-match is a parameter containing the updated Patient resource submitted, but with the UMB identifier, and the new health plan coverage record as submitted in the original Parameter request.

The response from a failed $member-match is a <b>422</b> Unprocessable Entity Status Code.

After a successful $member-match the new health plan will use the unique member identifier provided by the Old Health Plan in the Patient.identifier field to query for any subsequent transactions related to payer-to-payer exchange.

For example, in PDex the new health plan will subsequently use the UMB identifier to request the member’s health records. This can be done by querying the US Core FHIR profile endpoints which will be constrained to the identified member. Alternatively, the new health plan can perform a $everything operation to the Patient/{ID}/$everything operation endpoint to receive a bundle of the member’s health records.

### Member matching Logic

This specification is not attempting to define the member matching logic that is used by a Payer that processes a $member-match operation.

The specification is:
- defining that only a SINGLE unique match is returned.
- No match returns a 422 status code.
- Multiple matches return a 422 status code. 
- Defining the content passed into the $member-match operation.
- Defining the data returned from the $member-match operation.

An important objective of this operation is to ensure that a payer operating a $member-match operation has sufficient data provided to enable a match operation to be performed. 

For the requesting payer the operation assumes that a new member is able to provide their demographic information (name, date of birth, gender) and the identification details that would be present on the health plan insurance card provided by their old health plan.

### $member-match Parameter Example

Example request: $member-match Parameter resource submitted by the new health plan. 

Note the Patient identifier type set to "MB".
$member-match accepts a POST with the Parameters json bundle in the body.

#### Example Parameter bundle sent from New Health Plan

    {
        "resourceType": "Parameters",
        "parameter": [
            {
                "name": "MemberPatient",
                "resource": {
                    "resourceType": "Patient",
                    "id": "1",
                    "identifier": [
                        {
                            "type": {
                                "coding": [
                                    {
                                        "system": "http://hl7.davinci.org",
                                        "code": "MB"
                                    }
                                ]
                            },
                            "system": "http://oldhealthplan.example.com",
                            "value": "55678",
                            "assigner": {
                                "reference": "Organization/2",
                                "_reference": {
                                    "fhir_comments": [
                                        "MB is passed from coverage card by new health plan."
                                    ]
                                }
                            }
                        }
                    ],
                    "name": [
                        {
                            "use": "official",
                            "family": "Person",
                            "given": [
                                "Patricia",
                                "Ann"
                            ]
                        }
                    ],
                    "gender": "female",
                    "birthDate": "1974-12-25"
                }
            },
            {
                "name": "OldCoverage",
                "resource": {
                    "resourceType": "Coverage",
                    "id": "9876B1",
                    "text": {
                        "status": "generated",
                        "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the coverage</div>"
                    },
                    "contained": [
                        {
                            "resourceType": "Organization",
                            "id": "Organization/2",
                            "name": "Old Health Plan",
                            "endpoint": [
                                {
                                    "reference": "http://www.oldhealthplan.com"
                                }
                            ]
                        }
                    ],
                    "identifier": [
                        {
                            "system": "http://oldhealthplan.example.com",
                            "value": "DH10001235"
                        }
                    ],
                    "status": "draft",
                    "beneficiary": {
                        "reference": "Patient/4"
                    },
                    "period": {
                        "start": "2011-05-23",
                        "end": "2012-05-23"
                    },
                    "payor": [
                        {
                            "reference": "#Organization/2"
                        }
                    ],
                    "class": [
                        {
                            "type": {
                                "coding": [
                                    {
                                        "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                                        "code": "group"
                                    }
                                ]
                            },
                            "value": "CB135"
                        },
                        {
                            "type": {
                                "coding": [
                                    {
                                        "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                                        "code": "plan"
                                    }
                                ]
                            },
                            "value": "B37FC"
                        },
                        {
                            "type": {
                                "coding": [
                                    {
                                        "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                                        "code": "subplan"
                                    }
                                ]
                            },
                            "value": "P7"
                        },
                        {
                            "type": {
                                "coding": [
                                    {
                                        "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                                        "code": "class"
                                    }
                                ]
                            },
                            "value": "SILVER"
                        }
                    ]
                }
            },
                {
            "name": "NewCoverage",
            "resource": {
              "resourceType": "Coverage",
              "id": "AA87654",
              "contained": [
                  {
                    "resourceType" : "Organization",
                    "id" : "Organization/3",
                    "name" : "New Health Plan",
                    "endpoint" : [
                      {
                        "reference" : "http://www.newhealthplan.com"
                      }
                    ]
                  }
                ],
                "identifier": [
                {
                  "system": "http://newealthplan.example.com",
                  "value": "234567"
                }
              ],
              "status": "active",
              "beneficiary": {
                "reference": "Patient/1"
              },
              "period": {
                "start": "2020-04-01",
                "end": "2021-03-31"
              },
              "payor": [
                {
                  "reference": "#Organization/3"
                }
              ],
              "class": [
                {
                  "type": {
                    "coding": [
                      {
                        "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                        "code": "group"
                      }
                    ]
                  },
                  "value": "A55521",
                  "name": "New Health Plan Group"
                },
                {
                  "type": {
                    "coding": [
                      {
                        "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                        "code": "subgroup"
                      }
                    ]
                  },
                  "value": "456"
                },
                {
                  "type": {
                    "coding": [
                      {
                        "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                        "code": "plan"
                      }
                    ]
                  },
                  "value": "99012"
                },
                {
                  "type": {
                    "coding": [
                      {
                        "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                        "code": "subplan"
                      }
                    ]
                  },
                  "value": "A4"
                },
                {
                  "type": {
                    "coding": [
                      {
                        "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                        "code": "class"
                      }
                    ]
                  },
                  "value": "GOLD"
                }
              ]
            }
          }
        ]
    }

#### Parameter Response from Old Health Plan

Parameter Response Example

    {
      "resourceType": "Parameters",
      "parameter": [
        {
          "name": "MemberPatient",
          "resource": {
            "resourceType": "Patient",
            "id": "1",
            "identifier": [
              {
                "type": {
                  "coding": [
                    {
                      "system": "http://hl7.davinci.org",
                      "code": "MB"
                    }
                  ]
                },
                "system": "http://oldhealthplan.example.com",
                "value": "55678",
                "assigner": {
                  "reference": "Organization/2",
                  "_reference": {
                    "fhir_comments": [
                      "MB is passed from coverage card by new health plan."
                    ]
                  }
                }
              },
              {
                "use": "usual",
                "type": {
                  "coding": [
                    {
                      "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                      "code": "UMB",
                      "display": "Member Number",
                      "userSelected": false
                    }
                  ],
                  "text": "Member Number"
                },
                "system": "https://old.payer.example.com/diamond-health-ppo/uniquemember",
                "value": "dhu-10102"
              }
            ],
            "name": [
              {
                "use": "official",
                "family": "Person",
                "given": [
                  "Patricia",
                  "Ann"
                ]
              }
            ],
            "gender": "female",
            "birthDate": "1974-12-25"
          }
        },
        {
          "name": "NewCoverage",
          "resource": {
            "resourceType": "Coverage",
            "id": "AA87654",
            "contained": [
              {
                "resourceType": "Organization",
                "id": "Organization/3",
                "name": "New Health Plan",
                "endpoint": [
                  {
                    "reference": "http://www.newhealthplan.com"
                  }
                ]
              }
            ],
            "identifier": [
              {
                "system": "http://newealthplan.example.com",
                "value": "234567"
              }
            ],
            "status": "active",
            "beneficiary": {
              "reference": "Patient/1"
            },
            "period": {
              "start": "2020-04-01",
              "end": "2021-03-31"
            },
            "payor": [
              {
                "reference": "#Organization/3"
              }
            ],
            "class": [
              {
                "type": {
                  "coding": [
                    {
                      "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                      "code": "group"
                    }
                  ]
                },
                "value": "A55521",
                "name": "New Health Plan Group"
              },
              {
                "type": {
                  "coding": [
                    {
                      "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                      "code": "subgroup"
                    }
                  ]
                },
                "value": "456"
              },
              {
                "type": {
                  "coding": [
                    {
                      "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                      "code": "plan"
                    }
                  ]
                },
                "value": "99012"
              },
              {
                "type": {
                  "coding": [
                    {
                      "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                      "code": "subplan"
                    }
                  ]
                },
                "value": "A4"
              },
              {
                "type": {
                  "coding": [
                    {
                      "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                      "code": "class"
                    }
                  ]
                },
                "value": "GOLD"
              }
            ]
          }
        }
      ]
    }
    
## Handling Data Received Via Payer-to-Payer Exchange

When a new health plan receives a member's data from a prior health plan the handling of that data is an implementation decision by the Health Plan. The CMS Interoperability and Patient Access Rule requires that the data must be incorporated into the member's record. 

The choices for handling of imported data for a member include, but are not limited to:

- Incorporating the data into the FHIR data for a member to enable the data to be passed on via FHIR API to third-party applications or other payers.
- Processing the data to incorporate into the health plan's enterprise systems, such as Care Management.

The CMS Interoperability and Patient Access Rule encourages, but does not require payers, to share member data using US Core FHIR resources. If a health plan receives data as FHIR resources they are encouraged to also request the associated Provenance resources using the following parameter:

    "_revinclude=Provenance:target" 

This will help a payer identify the source of data if/when records are merged into a member's health record, differentiating the data from data that came from the health plan itself.


[Next Page - Data Mapping](DataMapping.html)
