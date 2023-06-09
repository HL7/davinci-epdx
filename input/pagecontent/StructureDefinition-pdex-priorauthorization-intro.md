[Previous Page - US Core PractitionerRole](USCorePractitionerRole.html)



The PDex Prior Authorization profile has been created to enable Payers to communicate prior authorization decisions and changes to the status of a prior authorization to members, providers and other payers.

Payers SHALL make available pending and active prior authorization decisions and related clinical documentation and forms for items and services, not including prescription drugs, including the date the prior authorization was approved, the date the authorization ends, as well as the units and services approved and those used to date, no later than one (1) business day after a provider initiates a prior authorization for the beneficiary or there is a change of status for the prior authorization.

A slice has been defined for meta.profile that makes the URI for the Structure Definition a required field. The ExplanationOfBenefit resource is used to express claims information to members in accordance with the [Carin Blue Button Implementation Guide](http://hl7.org/fhir/us/carin-bb/). By setting the value of ExplanationOfBenefit.Use to "preauthorization" in Prior Authorization resources a Payer will be able to exclude, or include, Prior Authorization records, dependent upon the use case. For the PDex IG it would be a case of setting “use=preauthorization” as a search parameter to include only Prior Authorization records.

        [BaseURL]/ExplanationOfBenefit?use=preauthorization&patient=Patient/1


