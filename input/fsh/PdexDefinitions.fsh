// Define a rule set for commonly used rules for definition resources using instances

RuleSet: PdexDefinitionContent
* status = #active      // draft until final published
// * status = #draft      // draft until final published
* experimental = false  // true until ready for pilot, then false
* version = "2.1.0"    // Follow IG Versioning rules
* publisher = "HL7 International"
* contact[0].telecom.system = #url
* contact[0].telecom.value = "http://hl7.org/Special/committees/pafm/index.cfm"
* contact[1].telecom.system = #email
* contact[1].telecom.value = "mailto:mark@ekivemark.com"
* jurisdiction.coding = urn:iso:std:iso:3166#US
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


// Define a rule set for commonly used rules for definition resources using other Sushi features
RuleSet: PdexStructureDefinitionContent
//* ^status = #draft      // draft until final published
* ^status = #active      // draft until final published
* ^experimental = false  // true until ready for pilot, then false
* ^version = "2.1.0"    // Follow IG Versioning rules
* ^publisher = "HL7 International"
* ^contact[0].telecom.system = #url
* ^contact[0].telecom.value = "http://hl7.org/Special/committees/fm"
* ^contact[1].telecom.system = #email
* ^contact[1].telecom.value = "mailto:mark@ekivemark.com"
* ^jurisdiction.coding = urn:iso:std:iso:3166#US
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm


RuleSet: PdexCapabilityStatementContent
* status = #draft
* experimental = true
* date = "2020-09-13"
* publisher = "HL7 International / Financial Management"
* contact.name = "Mark Scrimshire"
* contact.telecom.system = #email
* contact.telecom.value = "mailto:mark@ekivemark.com"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[1] = #xml
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* extension.valueCode = #fm
* implementationGuide = "http://hl7.org/fhir/us/davinci-pdex/ImplementationGuide/hl7.fhir.us.davinci-pdex"


//-----------------------------------------------------
// Default Div insert
//----------------------------------------------------
RuleSet: DefaultDiv
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Default Generated text for resource.</div>"