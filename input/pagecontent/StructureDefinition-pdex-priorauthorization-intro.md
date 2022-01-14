[Previous Page - US Core PractitionerRole](USCorePractitionerRole.html)



The PDex Prior Authorization profile has been created to enable Payers to communicate prior authorization decisions and changes to the status of a prior authorization to members.

Payers are expected to communicate pending and active prior authorization decisions and related clinical documentation and forms for items and services, not including prescription drugs, including the date the prior authorization was approved, the date the authorization ends, as well as the units and services approved and those used to date, no later than one (1) business day after a provider initiates a prior authorization for the enrollee or there is a change of status for the prior authorization.

A slice has been defined for meta.profile that makes the URI for the Structure Definition a required field. This is necessary to enable a Payer's server implementations the ability to filter ExplanationOfBenefit resources. The ExplanationOfBenefit resource is used to express claims information to members in accordance with the [Carin Blue Button Implementation Guide](http://hl7.org/fhir/us/carin-bb/). By including the profile reference in Prior Authorization resources a Payer will be able to exclude, or include, Prior Authorization records, dependent upon the use case. For the PDex IG it would be a case of adding the "_profile" search parameter to include only Prior Authorization records.

        [BaseURL]/ExplanationOfBenefit?_profile=http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-priorauthorization|1.1.0&patient=Patient/1


