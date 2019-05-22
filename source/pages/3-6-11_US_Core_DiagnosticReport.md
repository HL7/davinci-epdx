---
title: 3-6-11 US Core DiagnosticReport
layout: default
active: 3-6-11 US Core DiagnosticReport
---

The minimum fields to be provided in the US Core DiagnosticReport resource are:

| R4 Hierarchical Name           | R4 Name          | Card. | Type                                                                   |
|--------------------------------|------------------|-------|------------------------------------------------------------------------|
| DiagnosticReport               | DiagnosticReport | 0..*  |                                                                        |
| DiagnosticReport.id            | id               | 0..1  | id                                                                     |
| DiagnosticReport.status        | status           | 1..1  | code                                                                   |
| DiagnosticReport.category      | category         | 1..1  | CodeableConcept                                                        |
| DiagnosticReport.code          | code             | 1..1  | CodeableConcept                                                        |
| DiagnosticReport.subject       | subject          | 1..1  | Reference(US Core Patient Profile)                                     |
| DiagnosticReport.effective[x]  | effective[x]     | 1..1  | dateTime, Period                                                       |
| DiagnosticReport.issued        | issued           | 1..1  | instant                                                                |
| DiagnosticReport.performer     | performer        | 0..*  | Reference(US Core Practitioner Profile | US Core Organization Profile) |
| DiagnosticReport.result        | result           | 0..*  | Reference(US Core Result Observation Profile)                          |
| DiagnosticReport.media         | media            | 0..*  | BackboneElement                                                        |
| DiagnosticReport.presentedForm | presentedForm    | 0..*  | Attachment                                                             |