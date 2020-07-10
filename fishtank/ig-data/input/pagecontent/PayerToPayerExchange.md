# Operation $member-match on Patient

Find Member using Patient and Coverage Resources

OPERATION: Find member using search driven by member patient and coverage information.

When a member switches from one plan to another the member has the option to request their data be passed to their new health plan.

The new Health Plan SHALL enable an enrolling member to provide the coverage details for their prior health plan. The new Health Plan SHALL create the following resources that will be compiled into a Parameter Resource and submitted to the $member-match operation on the Patient FHIR endpoint for the old health plan:

- US Core Patient (Containing Member demographics)
- Coverage (details of prior health plan coverage provided by the member, typically from their Health Plan coverage card)
- Coverage (details of new or prospective health plan coverage, provided by the health plan based upon the member's enrollment)

The New Health Plan Coverage record provides information for the prior Health Plan to determine the identity of their member in the new health plan, enabling them to identify the member in the new Health Plan for any future communications.

The Health Plan should add the unique member identifier to the received Patient record.

The Old Health Plan should return the following data:

- The unique member identifier added to the Patient.identifier in the Patient resource submitted by the new health plan.
- The new health plan coverage resource.

Only one Patient and one Coverage record are returned.

Reference Implementation Information: [Member-Match Reference Implementation](https://confluence.hl7.org/display/DVP/Member-Match+Reference+Implementation)

## Notes

Providing a directory of FHIR Endpoints that support the $member-match operation for each health plan is outside the scope of this operation.

One suggestion for discoverability is that the FHIR endpoint is discoverable via a file in the .well-known folder of the URL for the health plan that is typically found on a member's health plan insurance card.

## Operation:

    URL: POST [base]/Patient/$member-match

## Patient.identifier

When the New Health Plan creates an OldCoverage parameter where the Coverage resource has a Coverage.identifier and the identifier.type is "MB". The "MB" value is taken from the http://terminology.hl7.org/CodeSystem/v2-0203 value set.

When the Old Health Plan returns the Patient Record they SHALL ADD a Patient.identifier with the Patient.identifier.type = "UMB" (Unique Member Identifier). This is a new type value.

A code system will be created with a value set with a single entry "UMB" and will be referenced by the value set for identifier.

## Unique Member Identifier

The old Health Plan SHALL return a unique member identifier and a corresponding system value that identifies the plan. 

The member identifier SHALL be either the internal unique identifier, or an identifier that is mapped one-to-one to the Health Plan's unique member identifier.

## Parameters

| Use | Name | Cardinality | Type | Binding | Documentation |
| IN | resource | 1..1 | Parameter |  | 
Use this to provide a set of coverage and beneficiary details for the match operation to search for a unique member record (e.g. POST a parameter with Patient, Old Coverage and New Coverage to Patient/$member-match). |
| OUT | return | 1..1 | Parameter |  |	
The returned Parameter resource will contain the New Plan's Coverage record and their Member Patient record with the ADDITION of an identifier of type "UMB" that represents the Unique identifier to identify the member records at the old health plan. If the operation failed to find a unique match then a BadRequest status code is returned. (e.g. 422 - Unprocessable Entity). |


The response from a successful $member-match is a parameter containing the updated Patient resource submitted, but with the UMB identifier, and the new health plan coverage record as submitted in the original Parameter request.

The response from a failed $member-match is a <b>422</b> Unprocessable Entity Status Code.

After a successful $member-match the new health plan will use the unique member identifier provided by the Old Health Plan in the Patient.identifier field to query for any subsequent transactions related to payer-to-payer exchange.

For example, in PDex the new health plan will subsequently use the UMB identifier to request the member’s health records. This can be done by querying the US Core FHIR profile endpoints which will be constrained to the identified member. Alternatively the new health plan can perform a $everything operation to the Patient/{ID}/$everything operation endpoint to receive a bundle of the member’s health records.

## Member matching Logic

This specification is not attempting to define the member matching logic that is used by a Payer that processes a $member-match operation.

- The specification is:
- defining that only a SINGLE unique match is returned.
- No match returns a 422 status code.
- Multiple matches returns a 422 status code. 
- Defining the content passed into the $member-match operation.
- Defining the data returned from the $member-match operation.

An important objective of this operation is to ensure that a payer operating a $member-match operation has sufficient data provided to enable a match operation to be performed. 

For the requesting payer the operation assumes that a new member is able to provide their demographic information (name, date of birth, gender) and the identification details that would be present on the health plan insurance card provided by their old health plan.

## $member-match Parameter Example

Example request: $member-match Parameter resource submitted by the new health plan. 

Note the Patient identifier type set to "MB".
$member-match accepts a POST with the Parameters json bundle in the body.

### Example Parameter bundle sent from New Health Plan

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

### Parameter Response from Old Health Plan

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
    
