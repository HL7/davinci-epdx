---
title: 3-6-17 US Core CarePlan
layout: default
active: 3-6-17 US Core CarePlan
---

Where a Health Plan has access to Care Plan information for a member they **SHALL** make the information available using the [US Core CarePlan](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-careplan.html) resource.

The essential fields to be provided in the CarePla  resource are:

| R4 Hierarchical Name            | R4 Name  | Flags | Card. | Type                               |
|---------------------------------|----------|-------|-------|------------------------------------|
| CarePlan                        | CarePlan | I     | 0..*  |                                    |
| CarePlan.id                     | id       |      | 0..1  | id                                 |
| CarePlan.text                   | text     | S     | 1..1  | Narrative                          |
| CarePlan.text.status            | status   | S     | 1..1  | code                               |
| CarePlan.text.div               | div      | I     | 1..1  | xhtml                              |
| CarePlan.status                 | status   | ?!S  | 1..1  | code                               |
| CarePlan.intent                 | intent   | ?!S  | 1..1  | code                               |
| CarePlan.category               | category | SI   | 1..*  | CodeableConcept                    |
| CarePlan.subject                | subject  | S    | 1..1  | Reference(US Core Patient Profile) |
| CarePlan.activity.detail.status | status   | ?!    | 1..1  | code                               |

#### 3-6-17-1 Example CarePlan Resource

An example mapping of a CarePlan for a colonoscopy is shown below:

<pre>
{
  "resourceType" : "CarePlan",
  "id" : "colonoscopy",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/us/core/StructureDefinition/us-core-careplan"
    ]
  },
  "text" : {
    "status" : "additional",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n\t\t\t<strong>Assessment</strong>\n\t\t\t<ol>\n\t\t\t\t<li>Recurrent GI bleed of unknown etiology; hypotension perhaps secondary to this but as likely secondary to polypharmacy.</li>\n\t\t\t\t<li>Acute on chronic anemia secondary to #1.</li>\n\t\t\t\t<li>Azotemia, acute renal failure with volume loss secondary to #1.</li>\n\t\t\t\t<li>Hyperkalemia secondary to #3 and on ACE and K+ supplement.</li>\n\t\t\t\t<li>Other chronic diagnoses as noted above, currently stable.</li>\n\t\t\t</ol>\n\t\t\t<table>\n\t\t\t\t<thead>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<th>Planned Activity</th>\n\t\t\t\t\t\t<th>Planned Date</th>\n\t\t\t\t\t</tr>\n\t\t\t\t</thead>\n\t\t\t\t<tbody>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td>Colonoscopy</td>\n\t\t\t\t\t\t<td>April 21, 2000</td>\n\t\t\t\t\t</tr>\n\t\t\t\t</tbody>\n\t\t\t</table>\n\t\t</div>"
  },
  "status" : "active",
  "intent" : "order",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://hl7.org/fhir/us/core/CodeSystem/careplan-category",
          "code" : "assess-plan"
        }
      ]
    }
  ],
  "subject" : {
    "reference" : "Patient/example",
    "display" : "Amy Shaw"
  }
}
</pre>
