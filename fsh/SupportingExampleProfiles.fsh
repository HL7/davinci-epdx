Instance: Patient1
InstanceOf: us-core-patient
Description: "US Core Patient Example1"
Usage: #example
  //* id = "1234-234-1243-12345678901"
  * meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
  * meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
  * language = #en-US
  * active = true
  * name[0].family = "Appleseed"
  * name[0].given[0] = "Johnny"
  * telecom[0].system = http://hl7.org/fhir/ValueSet/contact-point-system#phone
  * telecom[0].value = "(443)555-1212"
  * telecom[0].rank = 1
  * telecom[0].system = 	http://hl7.org/fhir/ValueSet/contact-point-system#phone
  * telecom[0].value = "(410)678-2323"
  * telecom[0].rank = 2
  * gender = http://hl7.org/fhir/ValueSet/administrative-gender#male
  * birthDate = "1986-01-01"
  * address[0].type = http://hl7.org/fhir/address-type#physical
  * address[0].line[0] = "123 Main Street"
  * address[0].city = "Pittsburgh"
  * address[0].state = "PA"
  * address[0].postalCode = "12519"
  * maritalStatus = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK
  * identifier[0].type = http://hl7.org/fhir/ValueSet/identifier-type#mb
  * identifier[0].value = "1234-234-1243-12345678901"
  * identifier[0].system = "https://www.xxxhealthplan.com/fhir/memberidentifier"
  * identifier[1].type = http://hl7.org/fhir/ValueSet/identifier-type#mr
  * identifier[1].value = "1234-234-1243-12345678901m"
  * identifier[1].system = "https://www.xxxhealthplan.com/fhir/medicalrecordnumber"
  * identifier[2].type = http://hl7.org/fhir/ValueSet/identifier-type#um
  * identifier[2].value = "1234-234-1243-12345678901u"
  * identifier[2].system = "https://www.xxxhealthplan.com/fhir/uniquememberidentifier"
  * identifier[3].type = http://hl7.org/fhir/ValueSet/identifier-type#pt
  * identifier[3].value = "1234-234-1243-12345678901a"
  * identifier[3].system = "https://www.xxxhealthplan.com/fhir/patacctnum"
