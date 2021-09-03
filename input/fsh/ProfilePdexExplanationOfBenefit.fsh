Profile:        PdexExplanationOfBenefit
Parent:         ExplanationOfBenefit
Id:             pdex-explanationofbenefit
Title:          "PDex Explanation of Benefit"
Description:    "The PDex ExplanationOfBenefit (EOB) profile is provided to enable payers to express Prior Authorization information to members"
* insert PdexStructureDefinitionContent

* status  1..1 MS
* priority 0..1
* priority from $Process-Priority (required)
* patient  1..1 MS
* patient only Reference(us-core-patient)
* enterer  0..1 MS
* enterer only Reference(us-core-practitioner or us-core-practitionerrole)
* insurer  1..1 MS
* insurer only Reference(us-core-organization)
* provider  1..1 MS
* provider only Reference(us-core-practitioner or us-core-practitionerrole or us-core-organization)
* facility  0..1 MS
* facility only Reference(us-core-location)

* careTeam.provider 1..1 MS
* careTeam.provider only Reference(us-core-practitioner or us-core-practitionerrole or us-core-organization)

* insurance.coverage only Reference(hrex-coverage)

* item.encounter only Reference(us-core-encounter)

* addItem.provider only Reference(us-core-practitioner or us-core-practitionerrole or us-core-organization)

* total.category 1..1 MS
* total.category ^short = "Prior Authorization utilization codes"
* total.category from PriorAuthorizationAmounts (extensible)

* total.extension contains
   PriorAuthorizationUtilization named priorauth-utilization 0..1 MS
