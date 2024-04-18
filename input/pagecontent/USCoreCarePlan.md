[Previous Page - US Core AllergyIntolerance](USCoreAllergyIntolerance.html)

Where a Health Plan has access to Care Plan information for a member, they **SHALL** make the information available using the [US Core CarePlan](http://hl7.org/fhir/us/core/StructureDefinition-us-core-careplan.html) resource.

The essential fields (Must Support or Cardinality greater than 0..*) to be provided in the 
[US Core 3.1.1 CarePlan]({{site.data.fhir.ver.uscore3}}/StructureDefinition-us-core-careplan.html) or
[US Core 6.1.0 CarePlan]({{site.data.fhir.ver.uscore6}}/StructureDefinition-us-core-careplan.html)resource are:

{% include style_insert_table_blue.html %}

| R4 Element                                 | Name                 | Cardinality | Type                               |
|--------------------------------------------|----------------------|:-----------:|------------------------------------|
| CarePlan.text                              |  text                |     1..1    | Narrative                          |
| CarePlan.text.status                       |  status              |     1..1    | code                               |
| CarePlan.text.div                          |  div                 |     1..1    | xhtml                              |
| CarePlan.status                            |  status              |     1..1    | code                               |
| CarePlan.intent                            |  intent              |     1..1    | code                               |
| CarePlan.category                          |  category            |     1..*    | (Slice Definition)                 |
| CarePlan.category:AssessPlan               |  category:AssessPlan |     1..1    | CodeableConcept                    |
| CarePlan.category:AssessPlan.coding        |  coding              |     1..*    | Coding                             |
| CarePlan.category:AssessPlan.coding.system |  system              |     1..1    | uri                                |
| CarePlan.category:AssessPlan.coding.code   |  code                |     1..1    | code                               |
| CarePlan.subject                           |  subject             |     1..1    | Reference(US Core Patient Profile) |


<i>[Table Definition](index.html#mapping-adjudicated-claims-and-encounter-information-to-clinical-resources)</i>

#### Example CarePlan Resource

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
				"div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">      
				            <strong>Assessment</strong>
				            <ol><li>Recurrent GI bleed of unknown etiology; hypotension perhaps secondary to this but as likely secondary to polypharmacy.</li>
										       <li>Acute on chronic anemia secondary to #1.</li>
													 <li>Azotemia, acute renal failure with volume loss secondary to #1.</li>
													 <li>Hyperkalemia secondary to #3 and on ACE and K+ supplement.</li>
													 <li>Other chronic diagnoses as noted above, currently stable.</li>
										</ol>
										<table>
										      <thead>
													    <tr>
															     <th>Planned Activity</th>
																	 <th>Planned Date</th>
														 </tr>
												 </thead>
												<tbody>
												    <tr>
														     <td>Colonoscopy</td>
																 <td>April 21, 2000</td>
													</tr>
										 </tbody>
							</table>
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
</pre>



[Next Page - US Core CareTeam](USCoreCareTeam.html)
