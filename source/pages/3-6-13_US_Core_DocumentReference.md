---
title: 3-6-13 US Core DocumentReference
layout: default
active: 3-6-13 US Core DocumentReference
---

The DocumentReference resource **SHALL** be used to exchange: 
 
- Unstructured data
- Imaging data
- C-CDA documents

The minimum fields to be provided in the US Core DocumentReference resource are:

| R4 Hierarchical Name                             | R4 Name           | Card. | Type                                 |
|--------------------------------------------------|-------------------|-------|--------------------------------------|
| DocumentReference                                | DocumentReference | 0..*  |                                      |
| DocumentReference.id                             | id                | 0..1  | id                                   |
| DocumentReference.identifier                     | identifier        | 0..1  | Identifier                           |
| DocumentReference.status                         | status            | 1..1  | code                                 |
| DocumentReference.type                           | type              | 1..1  | CodeableConcept                      |
| DocumentReference.subject                        | subject           | 1..1  | Reference(US Core Patient Profile)   |
| DocumentReference.date                           | date              | 0..1  | instant                              |
| DocumentReference.content                        | content           | 1..1  | BackboneElement                      |
| DocumentReference.content.attachment             | attachment        | 1..1  | Attachment                           |
| DocumentReference.content.attachment.contentType | contentType       | 1..1  | code                                 |
| DocumentReference.content.attachment.url         | url               | 1..1  | url                                  |
| DocumentReference.content.format                 | format            | 0..1  | Coding                               |
| DocumentReference.context                        | context           | 0..1  | BackboneElement                      |
| DocumentReference.context.encounter              | encounter         | 0..1  | Reference(US Core Encounter Profile) |