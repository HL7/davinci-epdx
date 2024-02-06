[Previous Page - PDex Device](PdexDevice.html)

Where a Health Plan has access to Laboratory Results and other diagnostic information, they **SHALL** make the information available using the [US Core DiagnosticReport for Laboratory Results Reporting](http://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport-lab.html) resource.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the US Core DiagnosticReport for Laboratory Results Reporting resource are:

{% include style_insert_table_blue.html %}

| R4 Element                                              | Name                      | Cardinality | Type                                                                    |
|---------------------------------------------------------|---------------------------|:-----------:|-------------------------------------------------------------------------|
| DiagnosticReport.status                                 |  status                   |     1..1    | code                                                                    |
| DiagnosticReport.category                               |  category                 |     1..*    | (Slice Definition)                                                      |
| DiagnosticReport.category:LaboratorySlice               |  category:LaboratorySlice |     1..1    | CodeableConcept                                                         |
| DiagnosticReport.category:LaboratorySlice.coding        |  coding                   |     1..*    | Coding                                                                  |
| DiagnosticReport.category:LaboratorySlice.coding.system |  system                   |     1..1    | uri                                                                     |
| DiagnosticReport.category:LaboratorySlice.coding.code   |  code                     |     1..1    | code                                                                    |
| DiagnosticReport.code                                   |  code                     |     1..1    | CodeableConcept                                                         |
| DiagnosticReport.subject                                |  subject                  |     1..1    | Reference(US Core Patient Profile)                                      |
| DiagnosticReport.effective[x]                           |  effective[x]             |     1..1    |                                                                         |
| DiagnosticReport.issued                                 |  issued                   |     1..1    | instant                                                                 |
| DiagnosticReport.performer                              |  performer                |     0..*    | Reference(US Core Practitioner Profile \| US Core Organization Profile) |
| DiagnosticReport.result                                 |  result                   |     0..*    | Reference(US Core Laboratory Result Observation Profile)                |

<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

#### HL7 V2 Mapping to Diagnostic Report

| R4 Hierarchical Name                      | R4 Name           | Cardinality | Type                                                                                                                       | HL7 V2 Source |
|-------------------------------------------|-------------------|-------------|----------------------------------------------------------------------------------------------------------------------------|---------------|
| DiagnosticReport.basedOn                  |  basedOn          | 0..*        | Reference(CarePlan \| DeviceRequest \| ImmunizationRecommendation \| MedicationRequest \| NutritionOrder\| ServiceRequest) | ORC           |
| DiagnosticReport.status                   |  status           | 1..1        | code                                                                                                                       | OBX-11        |
| DiagnosticReport.code                     |  code             | 1..1        | CodeableConcept                                                                                                            | OBX-3         |
| DiagnosticReport.subject                  |  subject          | 1..1        | Reference(US Core Patient Profile)                                                                                         | PID-3         |
| DiagnosticReport.focus                    |  focus            | 0..*        | Reference(Resource)                                                                                                        | OBX-3         |
| DiagnosticReport.encounter                |  encounter        | 0..1        | Reference(Encounter)                                                                                                       | PV1           |
| DiagnosticReport.effective[x]             |  effective[x]     | 0..1        | dateTime, Period                                                                                                           | OBX-14        |
| DiagnosticReport.issued                   |  issued           | 0..1        | instant                                                                                                                    | OBR-22        |
| DiagnosticReport.performer                |  performer        | 0..*        | Reference(Practitioner \| PractitionerRole \| Organization \| CareTeam \| Patient \| RelatedPerson)                        | OBX-15        |
| DiagnosticReport.value[x]                 |  value[x]         | 0..1        | Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period                     | OBX-5         |
| DiagnosticReport.dataAbsentReason         |  dataAbsentReason | 0..1        | CodeableConcept                                                                                                            | N/A           |
| DiagnosticReport.interpretation           |  interpretation   | 0..*        | CodeableConcept                                                                                                            | OBX-8         |
| DiagnosticReport.note                     |  note             | 0..*        | Annotation                                                                                                                 | NTE           |
| DiagnosticReport.bodySite                 |  bodySite         | 0..1        | CodeableConcept                                                                                                            | OBX-20        |
| DiagnosticReport.method                   |  method           | 0..1        | CodeableConcept                                                                                                            | OBX-17        |
| DiagnosticReport.specimen                 |  specimen         | 0..1        | Reference(Specimen)                                                                                                        | SPM           |
| DiagnosticReport.device                   |  device           | 0..1        | Reference(Device \| DeviceMetric)                                                                                          | OBX-17        |
| DiagnosticReport.referenceRange           |  referenceRange   | 0..*        | BackboneElement                                                                                                            | OBX-7         |
| DiagnosticReport.referenceRange.extension |  extension        | 0..*        | Extension                                                                                                                  | OBX-7         |
| DiagnosticReport.referenceRange.low       |  low              | 0..1        | SimpleQuantity                                                                                                             | OBX-7         |
| DiagnosticReport.referenceRange.high      |  high             | 0..1        | SimpleQuantity                                                                                                             | OBX-7         |
| DiagnosticReport.referenceRange.type      |  type             | 0..1        | CodeableConcept                                                                                                            | OBX-10        |
| DiagnosticReport.referenceRange.appliesTo |  appliesTo        | 0..*        | CodeableConcept                                                                                                            | OBX-10        |
| DiagnosticReport.referenceRange.text      |  text             | 0..1        | string                                                                                                                     | OBX-7         |

#### C-CDA Mapping to Diagnostic Report

| R4 Hierarchical Name                      | R4 Name            | Cardinality | Type                                                                                                                       | CCDA                                                                                |
|-------------------------------------------|--------------------|:-----------:|----------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------|
| DiagnosticReport.text                     |  text              | 0..1        | Narrative                                                                                                                  | Act.text (?)                                                                        |
| DiagnosticReport.contained                |  contained         | 0..*        | Resource                                                                                                                   | N/A                                                                                 |
| DiagnosticReport.extension                |  extension         | 0..*        | Extension                                                                                                                  | N/A                                                                                 |
| DiagnosticReport.modifierExtension        |  modifierExtension | 0..*        | Extension                                                                                                                  | N/A                                                                                 |
| DiagnosticReport.identifier               |  identifier        | 0..*        | Identifier                                                                                                                 | id                                                                                  |
| DiagnosticReport.basedOn                  |  basedOn           | 0..*        | Reference(CarePlan \| DeviceRequest \| ImmunizationRecommendation \| MedicationRequest \| NutritionOrder\| ServiceRequest) | .outboundRelationship[typeCode=FLFS].target                                         |
| DiagnosticReport.category                 |  category          | 1..*        | CodeableConcept                                                                                                            | .outboundRelationship[typeCode="COMP].target[classCode="LIST", moodCode="EVN"].code |
| DiagnosticReport.code                     |  code              | 1..1        | CodeableConcept                                                                                                            | code                                                                                |
| DiagnosticReport.subject                  |  subject           | 1..1        | Reference(US Core Patient Profile)                                                                                         | participation[typeCode=SBJ]                                                         |
| DiagnosticReport.performer                |  performer         | 0..*        | Reference(Practitioner \| PractitionerRole \| Organization \| CareTeam \| Patient \| RelatedPerson)                        | participation[typeCode=PRF]                                                         |
| DiagnosticReport.value[x]                 |  value[x]          | 0..1        | Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period                     | value                                                                               |
| DiagnosticReport.dataAbsentReason         |  dataAbsentReason  | 0..1        | CodeableConcept                                                                                                            | value.nullFlavor                                                                    |
| DiagnosticReport.interpretation           |  interpretation    | 0..*        | CodeableConcept                                                                                                            | interpretationCode                                                                  |
| DiagnosticReport.method                   |  method            | 0..1        | CodeableConcept                                                                                                            | methodCode                                                                          |
| DiagnosticReport.specimen                 |  specimen          | 0..1        | Reference(Specimen)                                                                                                        | participation[typparticipation[typeCode=DEV]eCode=SPC].specimen                     |
| DiagnosticReport.device                   |  device            | 0..1        | Reference(Device \| DeviceMetric)                                                                                          | participation[typeCode=DEV]                                                         |
| DiagnosticReport.referenceRange           |  referenceRange    | 0..*        | BackboneElement                                                                                                            | outboundRelationship[typeCode=REFV]/target[classCode=OBS, moodCode=EVN]             |
| DiagnosticReport.referenceRange.low       |  low               | 0..1        | SimpleQuantity                                                                                                             | value:IVL_PQ.low                                                                    |
| DiagnosticReport.referenceRange.high      |  high              | 0..1        | SimpleQuantity                                                                                                             | value:IVL_PQ.high                                                                   |
| DiagnosticReport.referenceRange.type      |  type              | 0..1        | CodeableConcept                                                                                                            | interpretationCode                                                                  |
| DiagnosticReport.referenceRange.appliesTo |  appliesTo         | 0..*        | CodeableConcept                                                                                                            | N/A (?)                                                                             |
| DiagnosticReport.referenceRange.age       |  age               | 0..1        | Range                                                                                                                      | outboundRelationship[typeCode=PRCN].targetObservationCriterion[code="age"].value    |
| DiagnosticReport.referenceRange.text      |  text              | 0..1        | string                                                                                                                     | value:ST                                                                            |
| DiagnosticReport.hasMember                |  hasMember         | 0..*        | Reference(Observation \| QuestionnaireResponse \| MolecularSequence)                                                       | outBoundRelationship                                                                |
| DiagnosticReport.derivedFrom              |  derivedFrom       | 0..*        | Reference(DocumentReference \| ImagingStudy \| Media \| QuestionnaireResponse \| Observation \| MolecularSequence)         | N/A (?)                                                                             |

#### Claim (837) to Diagnostic Report


| R4 Hierarchical Name                              | R4 Name            | Cardinality | Type                                                                                                                         | Claim(837) / Note          |
|---------------------------------------------------|--------------------|:-----------:|------------------------------------------------------------------------------------------------------------------------------|----------------------------|
| DiagnosticReport.implicitRules                    |  implicitRules     | 0..1        | uri                                                                                                                          | x                          |
| DiagnosticReport.language                         |  language          | 0..1        | code                                                                                                                         | x                          |
| DiagnosticReport.text                             |  text              | 0..1        | Narrative                                                                                                                    | x                          |
| DiagnosticReport.contained                        |  contained         | 0..*        | Resource                                                                                                                     | x                          |
| DiagnosticReport.extension                        |  extension         | 0..*        | Extension                                                                                                                    | x                          |
| DiagnosticReport.modifierExtension                |  modifierExtension | 0..*        | Extension                                                                                                                    | x                          |
| DiagnosticReport.identifier                       |  identifier        | 0..*        | Identifier                                                                                                                   | x                          |
| DiagnosticReport.partOf                           |  partOf            | 0..*        | Reference(MedicationAdministration\| MedicationDispense \| MedicationStatement \| Procedure \| Immunization \| ImagingStudy) | x                          |
| DiagnosticReport.status                           |  status            | 1..1        | code                                                                                                                         | Default to "unknown"       |
| DiagnosticReport.category                         |  category          | 1..*        | CodeableConcept                                                                                                              | x                          |
| DiagnosticReport.code                             |  code              | 1..1        | CodeableConcept                                                                                                              | Procedure Code             |
| DiagnosticReport.subject                          |  subject           | 1..1        | Reference(US Core Patient Profile)                                                                                           | Patient Demographics       |
| DiagnosticReport.focus                            |  focus             | 0..*        | Reference(Resource)                                                                                                          | x                          |
| DiagnosticReport.effective[x]                     |  effective[x]      | 0..1        | dateTime, Period                                                                                                             | Date of Service            |
| DiagnosticReport.issued                           |  issued            | 0..1        | instant                                                                                                                      | Interchange Date/Time      |
| DiagnosticReport.performer                        |  performer         | 0..*        | Reference(Practitioner \| PractitionerRole \| Organization \| CareTeam \| Patient \| RelatedPerson)                          | Billing/Rendering Provider |
| DiagnosticReport.value[x]                         |  value[x]          | 0..1        | Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period                       | x                          |
| DiagnosticReport.dataAbsentReason                 |  dataAbsentReason  | 0..1        | CodeableConcept                                                                                                              | x                          |
| DiagnosticReport.interpretation                   |  interpretation    | 0..*        | CodeableConcept                                                                                                              | x                          |
| DiagnosticReport.note                             |  note              | 0..*        | Annotation                                                                                                                   | Note Segment               |
| DiagnosticReport.bodySite                         |  bodySite          | 0..1        | CodeableConcept                                                                                                              | x                          |
| DiagnosticReport.method                           |  method            | 0..1        | CodeableConcept                                                                                                              | x                          |
| DiagnosticReport.specimen                         |  specimen          | 0..1        | Reference(Specimen)                                                                                                          | x                          |
| DiagnosticReport.device                           |  device            | 0..1        | Reference(Device \| DeviceMetric)                                                                                            | x                          |
| DiagnosticReport.referenceRange                   |  referenceRange    | 0..*        | BackboneElement                                                                                                              | x                          |
| DiagnosticReport.referenceRange.id                |  id                | 0..1        | string                                                                                                                       | x                          |
| DiagnosticReport.referenceRange.extension         |  extension         | 0..*        | Extension                                                                                                                    | x                          |
| DiagnosticReport.referenceRange.modifierExtension |  modifierExtension | 0..*        | Extension                                                                                                                    | x                          |
| DiagnosticReport.referenceRange.low               |  low               | 0..1        | SimpleQuantity                                                                                                               | x                          |
| DiagnosticReport.referenceRange.high              |  high              | 0..1        | SimpleQuantity                                                                                                               | x                          |
| DiagnosticReport.referenceRange.type              |  type              | 0..1        | CodeableConcept                                                                                                              | x                          |
| DiagnosticReport.referenceRange.appliesTo         |  appliesTo         | 0..*        | CodeableConcept                                                                                                              | x                          |
| DiagnosticReport.referenceRange.age               |  age               | 0..1        | Range                                                                                                                        | x                          |
| DiagnosticReport.referenceRange.text              |  text              | 0..1        | string                                                                                                                       | x                          |
| DiagnosticReport.hasMember                        |  hasMember         | 0..*        | Reference(Observation \| QuestionnaireResponse \| MolecularSequence)                                                         | x                          |
| DiagnosticReport.derivedFrom                      |  derivedFrom       | 0..*        | Reference(DocumentReference \| ImagingStudy \| Media \| QuestionnaireResponse \| Observation \| MolecularSequence)           | x                          |



#### Example DiagnosticReport for Laboratory Results Reporting Resource

An example mapping of a DiagnosticReport for urinalysis is shown below:

<pre>
{
  "resourceType" : "DiagnosticReport",
  "id" : "urinalysis",
  "meta" : {
    "versionId" : "209563",
    "lastUpdated" : "2016-04-19T17:28:11.308+00:00",
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: urinalysis</p><p><b>meta</b>: </p><p><b>status</b>: final</p><p><b>category</b>: Laboratory <span style=\"background: LightGoldenRodYellow\">(Details : {http://terminology.hl7.org/CodeSystem/v2-0074 code 'LAB' = 'Laboratory', given as 'Laboratory'})</span></p><p><b>code</b>: Complete Urinalysis <span style=\"background: LightGoldenRodYellow\">(Details : {LOINC code '24356-8' = 'Urinalysis complete panel - Urine', given as 'Urinalysis complete panel - Urine'})</span></p><p><b>subject</b>: <a href=\"Patient-example.html\">Amy Shaw. Generated Summary: id: example; Medical Record Number = 1032702 (USUAL); active; Amy V. Shaw ; ph: 555-555-5555(HOME), amy.shaw@example.com; gender: female; birthDate: Feb 20, 2007</a></p><p><b>effective</b>: Jul 5, 2005, 12:00:00 AM</p><p><b>issued</b>: Jul 6, 2005, 12:45:33 AM</p><p><b>performer</b>: <a href=\"Organization-acme-lab.html\">Acme Laboratory, Inc. Generated Summary: id: acme-lab; 1144221847, 2523423456; active; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/organization-type prov}\">Healthcare Provider</span>; name: Acme Labs; ph: (+1) 734-677-7777, hq@acme.org</a></p><p><b>result</b>: </p><ul><li><a href=\"Observation-urine-color.html\">COLOR=Yellow. Generated Summary: id: urine-color; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>; <span title=\"Codes: {http://loinc.org 5778-6}\">COLOR</span>; effective: Jul 5, 2005, 12:00:00 AM; <span title=\"Codes: {http://snomed.inbnm,fo/sct 371244009}\">Yellow</span></a></li><li><a href=\"Observation-urine-clarity.html\">APPEARANCE=Hazy. Generated Summary: id: urine-clarity; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>; <span title=\"Codes: {http://loinc.org 32167-9}\">APPEARANCE</span>; effective: Jul 5, 2005, 12:00:00 AM; <span title=\"Codes: {http://snomed.info/sct 81858005}\">Hazy</span></a></li><li><a href=\"Observation-urine-glucose.html\">GLUCOSE=Negative. Generated Summary: id: urine-glucose; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>; <span title=\"Codes: {http://loinc.org 25428-4}\">GLUCOSE</span>; effective: Jul 5, 2005, 12:00:00 AM; <span title=\"Codes: {http://snomed.info/sct 260385009}\">Negative</span></a></li><li><a href=\"Observation-urine-bilirubin.html\">BILIRUBIN=Negative. Generated Summary: id: urine-bilirubin; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>; <span title=\"Codes: {http://loinc.org 5770-3}\">BILIRUBIN</span>; effective: Jul 5, 2005, 12:00:00 AM; <span title=\"Codes: {http://snomed.info/sct 260385009}\">Negative</span></a></li><li><a href=\"Observation-urine-ketone.html\">KETONE=Negative. Generated Summary: id: urine-ketone; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>; <span title=\"Codes: {http://loinc.org 2514-8}\">KETONE</span>; effective: Jul 5, 2005, 12:00:00 AM; <span title=\"Codes: {http://snomed.info/sct 260385009}\">Negative</span></a></li><li><a href=\"Observation-usg.html\">SPEC GRAV=1.017. Generated Summary: id: usg; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>; <span title=\"Codes: {http://loinc.org 5811-5}\">SPEC GRAV</span>; effective: Jul 5, 2005, 12:00:00 AM; 1.017 {urine specific gravity}</a></li><li><a href=\"Observation-urine-ph.html\">PH=6 (pH). Generated Summary: id: urine-ph; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>; <span title=\"Codes: {http://loinc.org 5803-2}\">PH</span>; effective: Jul 5, 2005, 12:00:00 AM; 6.0 (pH)</a></li><li><a href=\"Observation-urine-protein.html\">PROTEIN=Negative. Generated Summary: id: urine-protein; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>; <span title=\"Codes: {http://loinc.org 20454-5}\">PROTEIN</span>; effective: Jul 5, 2005, 12:00:00 AM; <span title=\"Codes: {http://snomed.info/sct 260385009}\">Negative</span></a></li><li><a href=\"Observation-urobilinogen.html\">UROBILINOGEN=0.3 mg/dL. Generated Summary: id: urobilinogen; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>; <span title=\"Codes: {http://loinc.org 20405-7}\">UROBILINOGEN</span>; effective: Jul 5, 2005, 12:00:00 AM; 0.3 mg/dL</a></li><li><a href=\"Observation-urine-nitrite.html\">NITRITE=Positive. Generated Summary: id: urine-nitrite; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>; <span title=\"Codes: {http://loinc.org 5802-4}\">NITRITE</span>; effective: Jul 5, 2005, 12:00:00 AM; <span title=\"Codes: {http://snomed.info/sct 10828004}\">Positive</span></a></li><li><a href=\"Observation-urine-hemoglobin.html\">BLOOD=Trace. Generated Summary: id: urine-hemoglobin; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>; <span title=\"Codes: {http://loinc.org 5794-3}\">BLOOD</span>; effective: Jul 5, 2005, 12:00:00 AM; <span title=\"Codes: {http://snomed.info/sct 260405006}\">Trace</span></a></li><li><a href=\"Observation-urine-leukocyte-esterase.html\">LEUK ESTERASE=2+e. Generated Summary: id: urine-leukocyte-esterase; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>; <span title=\"Codes: {http://loinc.org 5799-2}\">LEUK ESTERASE</span>; effective: Jul 5, 2005, 12:00:00 AM; <span title=\"Codes: {http://snomed.info/sct 260348001}\">2+</span></a></li><li><a href=\"Observation-urine-sediment.html\">COMMENT=Recommend Urine Culture. Generated Summary: id: urine-sediment; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>; <span title=\"Codes: {http://loinc.org 11279-7}\">COMMENT</span>; effective: Jul 5, 2005, 12:00:00 AM; value: Recommend Urine Culture</a></li><li><a href=\"Observation-urine-bacteria.html\">BACTERIA=4+. Generated Summary: id: urine-bacteria; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>; <span title=\"Codes: {http://loinc.org 25145-4}\">BACTERIA</span>; effective: Jul 5, 2005, 12:00:00 AM; <span title=\"Codes: {http://snomed.info/sct 260350009}\">4+</span></a></li><li><a href=\"Observation-urine-epi-cells.html\">EPITHELIAL CELLS=1-5 cells/HPF. Generated Summary: id: urine-epi-cells; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>; <span title=\"Codes: {http://loinc.org 5787-7}\">EPITHELIAL CELLS</span>; effective: Jul 5, 2005, 12:00:00 AM; </a></li><li><a href=\"Observation-urine-wbcs.html\">WBC=20-30 cells/HPF. Generated Summary: id: urine-wbcs; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>; <span title=\"Codes: {http://loinc.org 5821-4}\">WBC</span>; effective: Jul 5, 2005, 12:00:00 AM; </a></li><li><a href=\"Observation-urine-rbcs.html\">RBC=Occasional cells/HPF. Generated Summary: id: urine-rbcs; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>; <span title=\"Codes: {http://loinc.org 13945-1}\">RBC</span>; effective: Jul 5, 2005, 12:00:00 AM; <span title=\"Codes: {http://snomed.info/sct 84638005}\">Occasional</span></a></li></ul></div>"
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "LAB",
          "display" : "Laboratory"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "24356-8",
        "display" : "Urinalysis complete panel - Urine"
      }
    ],
    "text" : "Complete Urinalysis"
  },
  "subject" : {
    "reference" : "Patient/example",
    "display" : "Amy Shaw"
  },
  "effectiveDateTime" : "2005-07-05",
  "issued" : "2005-07-06T11:45:33+11:00",
  "performer" : [
    {
      "reference" : "Organization/acme-lab",
      "display" : "Acme Laboratory, Inc"
    }
  ],
  "result" : [
    {
      "reference" : "Observation/urine-color",
      "display" : "COLOR=Yellow"
    },
    {
      "reference" : "Observation/urine-clarity",
      "display" : "APPEARANCE=Hazy"
    },
    {
      "reference" : "Observation/urine-glucose",
      "display" : "GLUCOSE=Negative"
    },
    {
      "reference" : "Observation/urine-bilirubin",
      "display" : "BILIRUBIN=Negative"
    },
    {
      "reference" : "Observation/urine-ketone",
      "display" : "KETONE=Negative"
    },
    {
      "reference" : "Observation/usg",
      "display" : "SPEC GRAV=1.017"
    },
    {
      "reference" : "Observation/urine-ph",
      "display" : "PH=6 (pH)"
    },
    {
      "reference" : "Observation/urine-protein",
      "display" : "PROTEIN=Negative"
    },
    {
      "reference" : "Observation/urobilinogen",
      "display" : "UROBILINOGEN=0.3 mg/dL"
    },
    {
      "reference" : "Observation/urine-nitrite",
      "display" : "NITRITE=Positive"
    },
    {
      "reference" : "Observation/urine-hemoglobin",
      "display" : "BLOOD=Trace"
    },
    {
      "reference" : "Observation/urine-leukocyte-esterase",
      "display" : "LEUK ESTERASE=2+e"
    },
    {
      "reference" : "Observation/urine-sediment",
      "display" : "COMMENT=Recommend Urine Culture"
    },
    {
      "reference" : "Observation/urine-bacteria",
      "display" : "BACTERIA=4+"
    },
    {
      "reference" : "Observation/urine-epi-cells",
      "display" : "EPITHELIAL CELLS=1-5 cells/HPF"
    },
    {
      "reference" : "Observation/urine-wbcs",
      "display" : "WBC=20-30 cells/HPF"
    },
    {
      "reference" : "Observation/urine-rbcs",
      "display" : "RBC=Occasional cells/HPF"
    }
  ]
}
</pre>



[Next Page - US Core DiagnosticReport for Report and Note Exchange](USCoreDiagnosticReportforReportandNoteExchange.html)
