// Example of PDex Provider Access Consent
Instance: Example-Consent-Provider-Opt-Out
InstanceOf: pdex-provider-consent
Title: "PDex Provider Access Consent Example"
Description: "An example of a PDex Provider Access Consent where a member expresses their desire to opt-out of sharing their data via the Provider Access API."
Usage: #example
* id = "no-consent-1"
* status = #active
* scope = $consentscope#patient-privacy
* category[disclosure] = $v3-ActCode#IDSCL
* patient.reference = "Patient/1"
* performer.reference = "Patient/1"
* organization = Reference(Payer1-1)
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
  * action = $consentaction#disclose

