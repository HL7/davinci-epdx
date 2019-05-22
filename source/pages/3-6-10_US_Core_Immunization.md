---
title: 3-6-10 US Core Immunization
layout: default
active: 3-6-10 US Core Immunization
---

If a Health Plan has access to Immunization information for a member the health plan **SHOULD** present the information using the Immunization resource.

The minimum fields to be provided in the US Core Immunization resource are:

| R4 Hierarchical Name                       | R4 Name       | Card. | Type                                                      |
|--------------------------------------------|---------------|-------|-----------------------------------------------------------|
| Immunization                               | Immunization  | 0..*  |                                                           |
| Immunization.id                            | id            | 0..1  | id                                                        |
| Immunization.status                        | status        | 1..1  | code                                                      |
| Immunization.statusReason                  | statusReason  | 0..1  | CodeableConcept                                           |
| Immunization.vaccineCode                   | vaccineCode   | 1..1  | CodeableConcept                                           |
| Immunization.patient                       | patient       | 1..1  | Reference(US Core Patient Profile)                        |
| Immunization.occurrence[x]                 | occurrence[x] | 1..1  | dateTime, string                                          |
| Immunization.primarySource                 | primarySource | 1..1  | boolean                                                   |
| Immunization.performer.actor               | actor         | 1..1  | Reference(Practitioner | PractitionerRole | Organization) |
| Immunization.protocolApplied.doseNumber[x] | doseNumber[x] | 1..1  | positiveInt, string                                       |