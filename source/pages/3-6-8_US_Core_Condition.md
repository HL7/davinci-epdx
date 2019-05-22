---
title: 3-6-8 US Core Condition
layout: default
active: 3-6-8 US Core Condition
---

The minimum fields to be provided in the US Core Condition resource are:

| R4 Hierarchical Name         | R4 Name            | Card. | Type                               |
|------------------------------|--------------------|-------|------------------------------------|
| Condition                    | Condition          | 0..*  |                                    |
| Condition.id                 | id                 | 0..1  | id                                 |
| Condition.clinicalStatus     | clinicalStatus     | 0..1  | CodeableConcept                    |
| Condition.verificationStatus | verificationStatus | 1..1  | CodeableConcept                    |
| Condition.category           | category           | 1..*  | CodeableConcept                    |
| Condition.code               | code               | 1..1  | CodeableConcept                    |
| Condition.subject            | subject            | 1..1  | Reference(US Core Patient Profile) |