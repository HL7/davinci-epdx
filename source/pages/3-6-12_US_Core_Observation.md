---
title: 3-6-12 US Core Observation
layout: default
active: 3-6-12 US Core Observation
---

The minimum fields to be provided in the US Core Observation resource are:

| R4 Hierarchical Name         | R4 Name          | Card. | Type                                                                                                   |
|------------------------------|------------------|-------|--------------------------------------------------------------------------------------------------------|
| Observation                  | Observation      | 0..*  |                                                                                                        |
| Observation.id               | id               | 0..1  | id                                                                                                     |
| Observation.status           | status           | 1..1  | code                                                                                                   |
| Observation.category         | category         | 1..*  | CodeableConcept                                                                                        |
| Observation.code             | code             | 1..1  | CodeableConcept                                                                                        |
| Observation.subject          | subject          | 1..1  | Reference(US Core Patient Profile)                                                                     |
| Observation.effective[x]     | effective[x]     | 0..1  | dateTime, Period                                                                                       |
| Observation.value[x]         | value[x]         | 0..1  | Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period |
| Observation.dataAbsentReason | dataAbsentReason | 0..1  | CodeableConcept                                                                                        |