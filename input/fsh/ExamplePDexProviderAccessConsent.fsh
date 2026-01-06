// Example of PDex Provider Access Consent - Member Opts Out
Instance: Example-Consent-Provider-Opt-Out
InstanceOf: pdex-provider-consent
Title: "PDex Provider Access Consent Opt-Out Example"
Description: "An example of a PDex Provider Access Consent where a member expresses their desire to opt-out of sharing their data via the Provider Access API. Opt-out is expressed using provision.type='deny' with provision.action='disclose' and the ProviderAccessUseCase extension."
Usage: #example
* id = "no-consent-1"
* status = #active
* scope = $consentscope#patient-privacy
* category[disclosure] = $v3-ActCode#IDSCL
* patient.reference = "Patient/1"
* performer.reference = "Patient/1"
* organization = Reference(Payer1-1)
* policyRule = http://terminology.hl7.org/CodeSystem/consentpolicycodes#cric "Common Rule Informed Consent"
* provision
  * type = #deny
  * period
    * start = "2024-06-11"
  * actor[source]
    * role = $provenance-participant-type#performer
    * reference
      * identifier
        * system = "http://hl7.org/fhir/sid/us-npi"
        * value = "0123456789"
      * display = "My Health Plan"
  * action = $consentaction#disclose "Disclose"
  * action.extension[providerAccessUseCase].valueBoolean = true


// Example of PDex Provider Access Consent - Member Permits Sharing
Instance: Example-Consent-Provider-Permit
InstanceOf: pdex-provider-consent
Title: "PDex Provider Access Consent Permit Example"
Description: "An example of a PDex Provider Access Consent where a member permits sharing of their data via the Provider Access API. Permit is expressed using provision.type='permit' with provision.action='disclose' and the ProviderAccessUseCase extension."
Usage: #example
* id = "consent-permit-1"
* status = #active
* scope = $consentscope#patient-privacy
* category[disclosure] = $v3-ActCode#IDSCL
* patient.reference = "Patient/1"
* performer.reference = "Patient/1"
* organization = Reference(Payer1-1)
* policyRule = http://terminology.hl7.org/CodeSystem/consentpolicycodes#cric "Common Rule Informed Consent"
* provision
  * type = #permit
  * period
    * start = "2024-06-11"
  * actor[source]
    * role = $provenance-participant-type#performer
    * reference
      * identifier
        * system = "http://hl7.org/fhir/sid/us-npi"
        * value = "0123456789"
      * display = "My Health Plan"
  * action = $consentaction#disclose "Disclose"
  * action.extension[providerAccessUseCase].valueBoolean = true
