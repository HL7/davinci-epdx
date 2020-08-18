Instance: Patient1
InstanceOf: us-core-patient
Description: "US Core Patient Example1"
Usage: #example
  * id = "1"
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


Instance: OrganizationPayer1
InstanceOf: us-core-organization
Description: "Payer1"
Usage: #example
  * id = "2"
  * meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
  * meta.lastUpdated = "2019-12-12T09:14:11+00:00"
  * language = #en-US
  * identifier[0].type = IdentifierTypeCS#npi
  * identifier[0].value = "345678"
  * identifier[1].type = IdentifierTypeCS#payerid
  * identifier[1].value = "901234"
  * name = "Payer 1"
  * active = true

Instance: OrganizationProvider1
InstanceOf: us-core-organization
Description: "Provider 1"
Usage: #example
  * id = "3"
  * meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
  * meta.lastUpdated = "2019-12-12T09:14:11+00:00"
  * language = #en-US
  * identifier[0].type = IdentifierTypeCS#npi
  * identifier[0].value = "345678"
  * identifier[1].type = IdentifierTypeCS#tax
  * identifier[1].value = "123-45-6789"
  * name = "Provider 1"
  * active = true


Instance: ExamplePractitioner
InstanceOf: us-core-practitioner
Description: "Example of a Practitioner Record"
  * id = "4"
  * meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
  * meta.lastUpdated = "2020-07-12T18:26:23.217+00:00"
  * identifier[0].type = IdentifierTypeCS#npi
  * identifier[0].system = "urn:oid:2.16.528.1.1007.3.1"
  * identifier[0].value = "874635264"
  * name[0].family = "Smith"
  * name[0].given[0] = "Susan"
  * name[0].suffix = "MD"
  * telecom[0].value = "3015551234"
  * gender = http://hl7.org/fhir/ValueSet/administrative-gender#female
  * birthDate = "1965-11-15"

Instance: ExampleLocation
InstanceOf: us-core-location
Description: "Example of a Pharmacy Location Record"
  * id = "5"
  * meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-location"
  * meta.lastUpdated = "2020-07-13T19:26:23.217+00:00"
  * name = "MyFavorite Pharmacy"


Instance: ExampleEncounter1
InstanceOf: us-core-encounter
Description: "Example of an Encounter that has a provenance record"
  * id = "6"
  * meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter"
  * meta.lastUpdated = "2020-07-14T19:26:23.217+00:00"
  * status = "http://hl7.org/fhir/encounter-status#finished"
  * class = "http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB"
  

