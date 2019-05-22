---
title: 3-6-9 US Core AllergyIntolerance
layout: default
active: 3-6-9 US Core AllergyIntolerance
---

The minimum fields to be provided in the US Core AllergyIntolerance resource are:

| R4 Hierarchical Name                  | R4 Name            | Card. | Type                               |
|---------------------------------------|--------------------|-------|------------------------------------|
| AllergyIntolerance                    | AllergyIntolerance | 0..*  |                                    |
| AllergyIntolerance.id                 | id                 | 0..1  | id                                 |
| AllergyIntolerance.clinicalStatus     | clinicalStatus     | 0..1  | CodeableConcept                    |
| AllergyIntolerance.verificationStatus | verificationStatus | 1..1  | CodeableConcept                    |
| AllergyIntolerance.code               | code               | 1..1  | CodeableConcept                    |
| AllergyIntolerance.patient            | patient            | 1..1  | Reference(US Core Patient Profile) |