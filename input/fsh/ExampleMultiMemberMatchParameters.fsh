// Example of Multi Member Match Request
Instance: multimembermatchpexample
InstanceOf: pdex-parameters-multi-member-match-bundle-in
Title: "$multi-member-match payer example request"
Description: "Example of more than one member being submitted to the PDex Payer-to-Payer Multiple Member Match Operation."
Usage: #example
* id = "payer-multi-member-match-in"
* parameter
* parameter[0].name = "MemberBundle"
* parameter[=].part[MemberPatient]
  * name = "MemberPatient"
  * resource
    * resourceType = "Patient"
    * id = "1"
    * identifier
      * type = $V2IdentifierTypeCS#MB
      * system = "http://example.org/old-payer/identifiers/member"
      * value = "55678"
      * assigner.display = "Old Payer"
    * name
      * use = #official
      * family = "Person"
      * given[0] = "Patricia"
      * given[+] = "Ann"
    * gender = #female
    * birthDate = "1974-12-25"
* parameter[=].part[CoverageToMatch]
  * name = "CoverageToMatch"
  * resource
    * resourceType = "Coverage"
    * id = "9876B1"
    * identifier
      * system = "http://example.org/old-payer"
      * value = "DH10001235"
    * status = #draft
    * beneficiary.reference = "Patient/1"
    * period
      * start = "2011-05-23"
      * end = "2012-05-23"
    * payor
      * identifier
        * system = "http://hl7.org/fhir/sid/us-npi"
        * value = "9876543210"
      * display = "Old Health Plan"
    * class[0]
      * type = $coverage-class#group
      * value = "CB135"
    * class[+]
      * type = $coverage-class#plan
      * value = "B37FC"
    * class[+]
      * type = $coverage-class#subplan
      * value = "P7"
    * class[+]
      * type = $coverage-class#class
      * value = "SILVER"
* parameter[=].part[Consent]
  * name = "Consent"
  * resource
    * resourceType = "Consent"
    * id = "consent-1"
    * status = #active
    * scope = $consentscope#patient-privacy
    * category = $v3-ActCode#IDSCL
    * patient.reference = "Patient/1"
    * performer.reference = "Patient/1"
    * sourceReference.reference = "http://example.org/DocumentReference/someconsent-1"
    * policy.uri = "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-consent.html#regular"
    * provision
      * type = #permit
      * period
        * start = "2023-12-01"
        * end = "2024-03-31"
      * actor[source]
        * role = $provenance-participant-type#performer
        * reference 
          * identifier
            * system = "http://hl7.org/fhir/sid/us-npi"
            * value = "9876543210"
          * display = "Old Health Plan"
      * actor[recipient]
        * role = $v3-ParticipationType#IRCP
        * reference
          * identifier
            * system = "http://hl7.org/fhir/sid/us-npi"
            * value = "0123456789"
          * display = "New Health Plan"
      * action = $consentaction#disclose
* parameter[=].part[CoverageToLink]
  * name = "CoverageToLink"
  * resource
    * resourceType = "Coverage"
    * id = "AA87654"
    * identifier
      * system = "http://example.org/new-payer/identifiers/coverage"
      * value = "234567"
    * status = #active
    * beneficiary.reference = "Patient/1"
    * payor
      * identifier
        * system = "http://hl7.org/fhir/sid/us-npi"
        * value = "0123456789"
      * display = "New Health Plan"
 // REcord 2 in bundle     
* parameter[+].name = "MemberBundle"
* parameter[=].part[MemberPatient]
  * name = "MemberPatient"
  * resource
    * resourceType = "Patient"
    * id = "2"
    * identifier
      * type = $V2IdentifierTypeCS#MB
      * system = "http://example.org/old-payer/identifiers/member"
      * value = "45567"
      * assigner.display = "Old Payer"
    * name
      * use = #official
      * family = "Smith"
      * given[0] = "William"
      * given[+] = "John"
    * gender = #female
    * birthDate = "1958-12-25"
* parameter[=].part[CoverageToMatch]
  * name = "CoverageToMatch"
  * resource
    * resourceType = "Coverage"
    * id = "876B10"
    * identifier
      * system = "http://example.org/old-payer"
      * value = "DH10001235"
    * status = #draft
    * beneficiary.reference = "Patient/2"
    * period
      * start = "2011-05-23"
      * end = "2012-05-23"
    * payor
      * identifier
        * system = "http://hl7.org/fhir/sid/us-npi"
        * value = "9876543210"
      * display = "Old Health Plan"
    * class[0]
      * type = $coverage-class#group
      * value = "CB135"
    * class[+]
      * type = $coverage-class#plan
      * value = "B37FC"
    * class[+]
      * type = $coverage-class#subplan
      * value = "P7"
    * class[+]
      * type = $coverage-class#class
      * value = "SILVER"
* parameter[=].part[Consent]
  * name = "Consent"
  * resource
    * resourceType = "Consent"
    * id = "consent-2"
    * status = #active
    * scope = $consentscope#patient-privacy
    * category = $v3-ActCode#IDSCL
    * patient.reference = "Patient/2"
    * performer.reference = "Patient/2"
    * sourceReference.reference = "http://example.org/DocumentReference/someconsen-2"
    * policy.uri = "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition-hrex-consent.html#regular"
    * provision
      * type = #permit
      * period
        * start = "2023-12-01"
        * end = "2024-03-31"
      * actor[source]
        * role = $provenance-participant-type#performer
        * reference 
          * identifier
            * system = "http://hl7.org/fhir/sid/us-npi"
            * value = "9876543210"
          * display = "Old Health Plan"
      * actor[recipient]
        * role = $v3-ParticipationType#IRCP
        * reference
          * identifier
            * system = "http://hl7.org/fhir/sid/us-npi"
            * value = "0123456789"
          * display = "New Health Plan"
      * action = $consentaction#disclose
* parameter[=].part[CoverageToLink]
  * name = "CoverageToLink"
  * resource
    * resourceType = "Coverage"
    * id = "AA87654"
    * identifier
      * system = "http://example.org/new-payer/identifiers/coverage"
      * value = "234567"
    * status = #active
    * beneficiary.reference = "Patient/2"
    * payor
      * identifier
        * system = "http://hl7.org/fhir/sid/us-npi"
        * value = "0123456789"
      * display = "New Health Plan"

// End of Example