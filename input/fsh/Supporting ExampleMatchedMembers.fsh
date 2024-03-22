// Profiles to support Payer-to-Payer Match Examples 

// Patient/1001
Instance: Patient1001
InstanceOf: us-core-patient
Description: "Example of a US Core Patient Record matched by old payer in Bulk Member Match"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient/1001. Default Generated text for resource.</div>"
* id = "1001"
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



// Patient/2002
Instance: Patient2002
InstanceOf: us-core-patient
Description: "Example of a US Core Patient Record matched by old payer in Bulk Member Match"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient/2002. Default Generated text for resource.</div>"
* id = "2002"
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


