//USCore
Alias:   $USCorePatient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias:   $USCorePractitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias:   $USCorePractitionerRole = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole
Alias:   $USCoreOrganization = http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
Alias:   $USCoreLocation = http://hl7.org/fhir/us/core/StructureDefinition/us-core-location
Alias:   $USCoreMedication = http://hl7.org/fhir/us/core/StructureDefinition/us-core-medication


// Code Systems
Alias:   $FDANationalDrugCodeCS = http://hl7.org/fhir/sid/ndc

// Define a rule set for commonly used rules for definition resources using instances
  RuleSet: PdexDefinitionContent
    * status = #draft      // draft until final published
    * experimental = true  // true until ready for pilot, then false
    * version = "0.1.10"    // Follow IG Versioning rules
    * publisher = "HL7 International"
    * contact[0].telecom.system = #url
    * contact[0].telecom.value = "http://hl7.org/Special/committees/pafm/index.cfm"
    * contact[1].telecom.system = #email
    * contact[1].telecom.value = "mailto:mark@ekivemark.com"
    * jurisdiction.coding = urn:iso:std:iso:3166#US

    // Define a rule set for commonly used rules for definition resources using other Sushi features
  RuleSet: PdexStructureDefinitionContent
    * ^status = #draft      // draft until final published
    * ^experimental = true  // true until ready for pilot, then false
    * ^version = "0.1.10"    // Follow IG Versioning rules
    * ^publisher = "HL7 International"
    * ^contact[0].telecom.system = #url
    * ^contact[0].telecom.value = "http://hl7.org/Special/committees/fm"
    * ^contact[1].telecom.system = #email
    * ^contact[1].telecom.value = "mailto:mark@ekivemark.com"
    * ^jurisdiction.coding = urn:iso:std:iso:3166#US

  RuleSet: PdexCapabilityStatementContent
    * status = #draft
    * experimental = true
    * date = "2020-07-24"
    * publisher = "HL7 Da Vinci"
    * contact.name = "Mark Scrimshire"
    * contact.telecom.system = #email
    * contact.telecom.value = "mailto:mark@ekivemark.com"
    * kind = #requirements
    * fhirVersion = #4.0.1
    * format[0] = #json
    * format[1] = #xml
    * implementationGuide = "http://hl7.org/fhir/us/davinci-pdex/ImplementationGuide/davinci-pdex"