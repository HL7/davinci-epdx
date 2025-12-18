# US Core CarePlan - Da Vinci Payer Data Exchange v2.1.1

* [**Table of Contents**](toc.md)
* [**PDex Implementation, Actors, Interactions, Data Payloads and Methods**](pdeximplementationactorsinteractionsdatapayloadsandmethods.md)
* [**Data Mapping**](datamapping.md)
* **US Core CarePlan**

## US Core CarePlan

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

[Previous Page - US Core AllergyIntolerance](USCoreAllergyIntolerance.md)

Where a Health Plan has access to Care Plan information for a member, they **SHALL** make the information available using the [US Core CarePlan](http://hl7.org/fhir/us/core/StructureDefinition-us-core-careplan.html) resource.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the [US Core 3.1.1 CarePlan](http://hl7.org/fhir/us/core/3.1.1/StructureDefinition-us-core-careplan.html) or [US Core 6.1.0 CarePlan](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-careplan.html)resource are:

| | | | |
| :--- | :--- | :--- | :--- |
| CarePlan.text | text | 1..1 | Narrative |
| CarePlan.text.status | status | 1..1 | code |
| CarePlan.text.div | div | 1..1 | xhtml |
| CarePlan.status | status | 1..1 | code |
| CarePlan.intent | intent | 1..1 | code |
| CarePlan.category | category | 1..* | (Slice Definition) |
| CarePlan.category:AssessPlan | category:AssessPlan | 1..1 | CodeableConcept |
| CarePlan.category:AssessPlan.coding | coding | 1..* | Coding |
| CarePlan.category:AssessPlan.coding.system | system | 1..1 | uri |
| CarePlan.category:AssessPlan.coding.code | code | 1..1 | code |
| CarePlan.subject | subject | 1..1 | Reference(US Core Patient Profile) |

*[Table Definition](index.md#mapping-adjudicated-claims-encounter-and-prior-authorization-information)*

#### Example CarePlan Resource

An example mapping of a CarePlan for a colonoscopy is shown below:

```

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
				"div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">      
				            Assessment
				            Recurrent GI bleed of unknown etiology; hypotension perhaps secondary to this but as likely secondary to polypharmacy.
										       Acute on chronic anemia secondary to #1.
													 Azotemia, acute renal failure with volume loss secondary to #1.
													 Hyperkalemia secondary to #3 and on ACE and K+ supplement.
													 Other chronic diagnoses as noted above, currently stable.
										
										
										      
													    
															     Planned Activity
																	 Planned Date
														 
												 
												
												    
														     Colonoscopy
																 April 21, 2000
													
										 
							
							</div>"
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

```

[Next Page - US Core CareTeam](USCoreCareTeam.md)

