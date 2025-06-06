Instance: pdex-server
InstanceOf: CapabilityStatement
Title: "PDEX Server CapabilityStatement"
Description: "This Section describes the expected capabilities of the PDex Server actor which supports US Core 3.1.1 and is responsible for providing responses to the queries submitted by PDex Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by PDex Servers for US Core 3.1.1 are defined. PDex Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements."
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* extension.valueCode = #fm
* url = "http://hl7.org/fhir/us/davinci-pdex/CapabilityStatement/pdex-server"
* version = "2.1.0"
* name = "PdexServerCapabilityStatement"
* title = "PDEX Server CapabilityStatement"
* status = #active
* experimental = false
* date = "2024-10-20"
* publisher = "HL7 International / Financial Management"
* contact[0].name = "HL7 International / Financial Management"
* contact[=].telecom[0].system = #url
* contact[=].telecom[=].value = "http://www.hl7.org/Special/committees/fm"
* contact[=].telecom[+].system = #email
* contact[=].telecom[=].value = "fm@lists.HL7.org"
* contact[+].name = "Mark Scrimshire (mark.scrimshire@onyxhealth.io)"
* contact[=].telecom.system = #email
* contact[=].telecom.value = "mailto:mark.scrimshire@onyxhealth.io"
* contact[+].name = "HL7 International - Financial Management"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "http://www.hl7.org/Special/committees/fm"
* description = "This Section describes the expected capabilities of the PDex Server actor which is responsible for providing responses to the queries submitted by the PDex Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by PDex Servers are defined. PDex Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[+] = #xml
* format[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* format[=].extension.valueCode = #SHALL
* format[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* format[=].extension.valueCode = #SHOULD
* patchFormat = #application/json-patch+json
* patchFormat.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* patchFormat.extension.valueCode = #SHOULD
* implementationGuide[0] = "http://hl7.org/fhir/smart-app-launch/ImplementationGuide/hl7.fhir.uv.smart-app-launch|2.1.0"
* implementationGuide[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* implementationGuide[=].extension.valueCode = #SHOULD
* implementationGuide[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* implementationGuide[=].extension.valueCode = #SHOULD
* rest.mode = #server
* rest.documentation = "The PDex Server **SHALL**: \n1. Support the US Core 3.1.1 Patient resource profile.\n2. Support at least one additional resource profile from the list of US Core and PDex Profiles. \n3. Implement the RESTful behavior according to the FHIR specification.\n4. Support json source formats for all US Core and PDex interactions. \n5. Return the following response classes:\n  - (Status 400): invalid parameter\n  - (Status 401/4xx): unauthorized request\n  - (Status 403): insufficient scope \n  - (Status 404): unknown resource \n  - (Status 410): deleted resource.\n\nThe PDex Server **SHOULD**: \n1. Support xml source formats for all US Core interactions.\n2. Identify the US Core profiles supported as part of the FHIR `meta.profile` attribute for each instance."
* rest.security.description = "1. See the [US Core Security Considerations](http://hl7.org/fhir/us/core/security.html) section for requirements and recommendations. 2. A server **SHALL** reject any unauthorized requests by returning an `HTTP 401` unauthorized response code."

// Resources = 25
// AllergyIntolerance
* rest.resource[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].extension.url = "required"
* rest.resource[=].extension[=].extension.valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "clinical-status"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].type = #AllergyIntolerance
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchRevInclude = "Provenance:target"
* rest.resource[=].searchRevInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchRevInclude.extension.valueCode = #SHALL
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "clinical-status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-allergyintolerance-clinical-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-allergyintolerance-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a id value and **MAY** provide both the Type and id values.\n\nThe server **SHALL** support both."

// CarePlan
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "status"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "status"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "date"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "date"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].type = #CarePlan
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-careplan"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL
* rest.resource[=].documentation = "* Additional considerations for systems aligning with [HL7 Consolidated (C-CDA)](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=492) Care Plan requirements:\n    - US Core Goal **SHOULD** be present in CarePlan.goal\n    - US Core Condition **SHOULD** be present in CarePlan.addresses\n    - Assessment and Plan **MAY** be included as narrative text"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = #SHOULD
* rest.resource[=].searchRevInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchRevInclude.extension.valueCode = #SHALL
* rest.resource[=].searchRevInclude = "Provenance:target"
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "category"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-careplan-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-careplan-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "A client **SHALL** provide a value precise to the *second + time offset*.\n\nA server **SHALL** support a value precise to the *second + time offset*."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-careplan-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a id value and **MAY** provide both the Type and id values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-careplan-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."

// CareTeam
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "status"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "role"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].type = #CareTeam
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-careteam"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL
* rest.resource[=].documentation = "In order to access care team member's names, identifiers, locations, and contact information, the CareTeam profile supports several types of care team participants. They are represented as references to other profiles and include the following four profiles which are marked as must support:\n  1. US Core Practitioner Profile\n  1. US Core PractitionerRole Profile\n  1. US Core Patient Profile\n  1. US Core RelatedPerson Profile\n\n  * Although *both* US Core Practitioner Profile and US Core PractitionerRole are must support, the server system is not required to support both types of references (and `_include` search parameters), but **SHALL** support *at least* one of them.\n  * The client application **SHALL** support all four profile references.\n  * Because the *US Core PractitionerRole Profile* supplies the provider's location and contact information and a reference to the Practitioner, server systems **SHOULD** reference it instead of the *US Core Practitioner Profile*.\n  * Servers that supports only *US Core Practitioner Profile* **SHALL** provide implementation specific guidance how to access a provider's location and contact information using only the Practitioner resource."
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = #SHOULD
* rest.resource[=].searchInclude[0] = "CareTeam:participant:PractitionerRole"
* rest.resource[=].searchInclude[+] = "CareTeam:participant:Practitioner"
* rest.resource[=].searchInclude[+] = "CareTeam:participant:Patient"
* rest.resource[=].searchInclude[+] = "CareTeam:participant:RelatedPerson"
* rest.resource[=].searchInclude[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude[=].extension.valueCode = #SHOULD
* rest.resource[=].searchInclude[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude[=].extension.valueCode = #SHOULD
* rest.resource[=].searchInclude[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude[=].extension.valueCode = #SHOULD
* rest.resource[=].searchInclude[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude[=].extension.valueCode = #SHOULD
* rest.resource[=].searchRevInclude = "Provenance:target"
* rest.resource[=].searchRevInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchRevInclude.extension.valueCode = #SHALL
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-careteam-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a id value and **MAY** provide both the Type and id values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-careteam-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "role"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-careteam-role"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."

// Condition
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "recorded-date"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "asserted-date"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "clinical-status"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "onset-date"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "abatement-date"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "clinical-status"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "encounter"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "code"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].type = #Condition
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = #SHOULD
* rest.resource[=].searchRevInclude = "Provenance:target"
* rest.resource[=].searchRevInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchRevInclude.extension.valueCode = #SHALL
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "category"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-condition-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "clinical-status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-condition-clinical-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-condition-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a id value and **MAY** provide both the Type and id values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "onset-date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-condition-onset-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "A client **SHALL** provide a value precise to the *second + time offset*.\n\nA server **SHALL** support a value precise to the *second + time offset*."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "asserted-date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-condition-asserted-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "A client **SHALL** provide a value precise to the *second + time offset*.\n\nA server **SHALL** support a value precise to the *second + time offset*."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "recorded-date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-condition-recorded-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "A client **SHALL** provide a value precise to the *second + time offset*.\n\nA server **SHALL** support a value precise to the *second + time offset*."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "abatement-date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-condition-abatement-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "A client **SHALL** provide a value precise to the *second + time offset*.\n\nA server **SHALL** support a value precise to the *second + time offset*."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-condition-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "encounter"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-condition-encounter"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a id value and **MAY** provide both the Type and id values.\n\nThe server **SHALL** support both."

// ---------------------------------------
// Consent
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].type = #Consent
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-consent"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].interaction[+].code = #history-instance
* rest.resource[=].interaction[+].code = #history-type
* rest.resource[=].readHistory = true
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchRevInclude = "Provenance:target"
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-condition-patient"
* rest.resource[=].searchParam[=].type = #reference

// ---------------------------------------
// Coverage
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].type = #Coverage
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/davinci-hrex/StructureDefinition/hrex-coverage"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = #SHOULD
* rest.resource[=].searchRevInclude = "Provenance:target"
* rest.resource[=].searchRevInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchRevInclude.extension.valueCode = #SHALL
* rest.resource[=].searchParam.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam.extension.valueCode = #SHALL
* rest.resource[=].searchParam.name = "patient"
* rest.resource[=].searchParam.definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-coverage-patient"
* rest.resource[=].searchParam.type = #reference
* rest.resource[=].searchParam.documentation = "The client **SHALL** provide at least a id value and **MAY** provide both the Type and id values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam.name = "_id"
* rest.resource[=].searchParam.type = #string
* rest.resource[=].searchParam.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam.extension.valueCode = #SHALL
* rest.resource[=].searchParam.name = "patient"
* rest.resource[=].searchParam.definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-coverage-patient"
* rest.resource[=].searchParam.type = #reference
* rest.resource[=].searchParam.documentation = "The client **SHALL** provide at least a id value and **MAY** provide both the Type and id values.\n\nThe server **SHALL** support both."

// Device
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "type"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "status"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].type = #Device
* rest.resource[=].supportedProfile[0] = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-device"
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL
* rest.resource[=].documentation = "* Implantable medical devices that have UDI information **SHALL** represent the UDI code in `Device.udiCarrier.carrierHRF`.\n   - All of the five UDI-PI elements that are present in the UDI code **SHALL** be represented in the corresponding US Core Implantable Device Profile element.\n   \n   UDI may not be present in all scenarios such as historical implantable devices, patient reported implant information, payer reported devices, or improperly documented implants. If UDI is not present and the manufacturer and/or model number information is available, they **SHOULD** be included to support historical reports of implantable medical devices as follows:\n\n   manufacturer -> `Device.manufacturer`  \n   model -> `Device.model`  \n\n* Servers **SHOULD** support query by Device.type to allow clients to request the patient's devices by a specific type. Note: The Device.type is too granular to differentiate implantable vs. non-implantable devices."
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = #SHOULD
* rest.resource[=].searchRevInclude = "Provenance:target"
* rest.resource[=].searchRevInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchRevInclude.extension.valueCode = #SHALL
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-device-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a id value and **MAY** provide both the Type and id values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-device-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-device-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-device-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a id value and **MAY** provide both the Type and id values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-device-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-device-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].type = #DiagnosticReport
* rest.resource[=].supportedProfile[0] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-note"
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab"
* rest.resource[=].supportedProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile[=].extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = #SHOULD
* rest.resource[=].searchRevInclude = "Provenance:target"
* rest.resource[=].searchRevInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchRevInclude.extension.valueCode = #SHALL
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-diagnosticreport-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-diagnosticreport-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a id value and **MAY** provide both the Type and id values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "category"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-diagnosticreport-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-diagnosticreport-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-diagnosticreport-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "A client **SHALL** provide a value precise to the *second + time offset*.\n\nA server **SHALL** support a value precise to the *second + time offset*."

// DocumentReference
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "type"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "status"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "type"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "period"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "date"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].type = #DocumentReference
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL
* rest.resource[=].documentation = "* The `DocumentReference.type` binding **SHALL** support at a minimum the [US Core 6.1 5 Common Clinical Notes](https://hl7.org/fhir/us/core/STU6.1/ValueSet-us-core-clinical-note-type.html) and may extend to the full US Core DocumentReference Type Value Set\n* The DocumentReference resources can represent the referenced content using either an address where the document can be retrieved using `DocumentReference.attachment.url` or the content as inline base64 encoded data using `DocumentReference.attachment.data`.\n    *  Although both are marked as must support, the server system is not required to support an address, and inline base64 encoded data, but **SHALL** support at least one of these elements.\n    *  The client application **SHALL** support both elements.\n    *  The `content.url` may refer to a FHIR Binary Resource (i.e. [base]/Binary/[id]), FHIR Document Bundle (i.e [base]/Bundle/[id] or another endpoint.\n        * If the endpoint is outside the FHIR base URL, it **SHOULD NOT** require additional authorization to access.\n* Every DocumentReference must have a responsible Organization. The organization responsible for the DocumentReference **SHALL** be present either in `DocumentReference.custodian` or accessible in the Provenance resource targeting the DocumentReference using `Provenance.agent.who` or `Provenance.agent.onBehalfOf`."
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = #SHOULD
* rest.resource[=].searchRevInclude = "Provenance:target"
* rest.resource[=].searchRevInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchRevInclude.extension.valueCode = #SHALL
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a id value and **MAY** provide both the Type and id values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "category"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "A client **SHALL** provide a value precise to the *second + time offset*.\n\nA server **SHALL** support a value precise to the *second + time offset*."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "period"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-period"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "A client **SHALL** provide a value precise to the *second + time offset*.\n\nA server **SHALL** support a value precise to the *second + time offset*."
* rest.resource[=].operation.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].operation.extension.valueCode = #SHALL
* rest.resource[=].operation.name = "docref"
* rest.resource[=].operation.definition = "http://hl7.org/fhir/us/core/OperationDefinition/docref"
* rest.resource[=].operation.documentation = "A server **SHALL** be capable of responding to a $docref operation and  capable of returning at least a reference to a generated CCD document, if available. **MAY** provide references to other 'on-demand' and 'stable' documents (or 'delayed/deferred assembly') that meet the query parameters as well. If a context date range is supplied the server ** SHOULD**  provide references to any document that falls within the date range If no date range is supplied, then the server **SHALL** provide references to last or current encounter.  **SHOULD** document what resources, if any, are returned as included resources`GET [base]/DocumentReference/$docref?patient=[id]`"

// Encounter
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "type"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "class"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "status"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "date"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "location"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "discharge-disposition"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].type = #Encounter
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL
* rest.resource[=].documentation = "* The Encounter resource can represent a reason using either a code with `Encounter.reasonCode`, or a reference with `Encounter.reasonReference` to  Condition or other resource.\n   * Although both are marked as must support, the server systems are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements.\n   * The client application **SHALL** support both elements.\n   * if `Encounter.reasonReference` references an Observation, it **SHOULD** conform to a US Core Observation if applicable. (for example, a laboratory result should conform to the US Core Laboratory Result Observation Profile)\n\n* The location address can be represented by either by the Location referenced by `Encounter.location.location` or indirectly through the Organization referenced by `Encounter.serviceProvider`.\n   * Although both are marked as must support, the server systems are not required to support both `Encounter.location.location` and `Encounter.serviceProvider`, but they **SHALL** support *at least one* of these elements.\n   * The client application **SHALL** support both elements.\n   * if using `Encounter.location.location` it **SHOULD** conform to US Core Location."
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = #SHOULD
* rest.resource[=].searchRevInclude = "Provenance:target"
* rest.resource[=].searchRevInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchRevInclude.extension.valueCode = #SHALL
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-encounter-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "class"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-encounter-class"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-encounter-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "A client **SHALL** provide a value precise to the *second + time offset*.\n\nA server **SHALL** support a value precise to the *second + time offset*."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-encounter-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-encounter-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a id value and **MAY** provide both the Type and id values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "location"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-encounter-location"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a id value and **MAY** provide both the Type and id values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-encounter-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-encounter-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "discharge-disposition"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-encounter-discharge-disposition"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."

// ExplanationOfBenefit
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].type = #ExplanationOfBenefit
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-priorauthorization"
* rest.resource[=].documentation = "When a Prior Authorization references another resource (e.g., Patient or Practitioner), the reference may be versioned or versionless. Payers SHALL use versioned references whenever they maintain point-in-time data (data that was effective as of the date of service or date of admission on the claim), but MAY use versionless references when they do not maintain versioned data. Clients MAY request referenced resources as part of an EOB search (by supplying the _include parameter) or directly using read or vread. Payers SHALL support both approaches, and SHALL return the same content for referenced resources in either case. “:iterate\" should be used if you request to include Coverage:payor in the EOB response bundle, e.g. GET [base]/ExplanationOfBenefit?[parameter=value]&_include=ExplanationOfBenefit:coverage&_include:iterate=Coverage:payor."
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Searches using service-date, _lastUpdated, or type require a patient search argument.\n\n_include:* SHALL be supported.\n"
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = #SHOULD
* rest.resource[=].searchInclude[0] = "ExplanationOfBenefit:patient"
* rest.resource[=].searchInclude[+] = "ExplanationOfBenefit:provider"
* rest.resource[=].searchInclude[+] = "ExplanationOfBenefit:care-team"
* rest.resource[=].searchInclude[+] = "ExplanationOfBenefit:coverage"
* rest.resource[=].searchInclude[+] = "ExplanationOfBenefit:insurer"
* rest.resource[=].searchInclude[+] = "ExplanationOfBenefit:*"
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/davinci-pdex/SearchParameter/explanationofbenefit-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/davinci-pdex/SearchParameter/explanationofbenefit-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/davinci-pdex/SearchParameter/explanationofbenefit-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "service-date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/davinci-pdex/SearchParameter/explanationofbenefit-service-date"
* rest.resource[=].searchParam[=].type = #date

// Goal
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "target-date"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "description"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "lifecycle-status"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].type = #Goal
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-goal"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL
* rest.resource[=].documentation = "* Although both `Goal.startDate` and `Goal.target.dueDate` are marked as must support, the server system is not required to support both, but **SHALL** support at least one of these elements. The client application **SHALL** support both elements."
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = #SHOULD
* rest.resource[=].searchRevInclude = "Provenance:target"
* rest.resource[=].searchRevInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchRevInclude.extension.valueCode = #SHALL
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "lifecycle-status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-goal-lifecycle-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-goal-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a id value and **MAY** provide both the Type and id values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "target-date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-goal-target-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "A client **SHALL** provide a value precise to the *day*.\n\nA server **SHALL** support a value a value precise to the *day*."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "description"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-goal-description"
* rest.resource[=].searchParam[=].type = #token
// ------------------------------------

// Group
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].type = #Group
* rest.resource[=].supportedProfile[0] = "http://hl7.org/fhir/us/davinci-atr/StructureDefinition/atr-group"
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-group"
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-member-match-group"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Allows discovery of existing groups. SHOULD be limited to groups a requestor is permitted to access."
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Allows retrieval of a specific Group Resource."
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Allows retrieval of a historical version of a Group Resource."
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Allows review of changes to a Group Resource over time."
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].interaction[=].documentation = "Retrieve the change history fora Group Resource."
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Group-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "characteristic"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Group-characteristic"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "A common characteristic of all members of a group."
// * rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
// * rest.resource[=].searchParam[=].extension.valueCode = #SHALL
// * rest.resource[=].searchParam[=].name = "Group-characteristic-value-reference"
// * rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/davinci-atr/SearchParameter/Group-characteristic-value-reference"
// * rest.resource[=].searchParam[=].type = #composite
// * rest.resource[=].searchParam[=].documentation = "multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true. multipleOr: The parameter may only have one value (no comma separators)."
* rest.resource[=].operation[0].name = "bulk-member-match"
* rest.resource[=].operation[=].definition = "http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/BulkMemberMatch"
* rest.resource[=].operation[=].documentation = "Client will submit multi-member-match-request bundle. Server will respond with a multi-member-match-response and instantiate a Group resource conforming to the PDexMemberMatchGroup that contains a set of matched members that the Server identified."
* rest.resource[=].operation[+].name = "davinci-data-export"
* rest.resource[=].operation[=].definition = "http://hl7.org/fhir/us/davinci-atr/OperationDefinition/davinci-data-export"
* rest.resource[=].operation[=].documentation = "Each DaVinci use case as part of its implementation guide can define the exportType parameter and the behavior expected."

// ----------------------------------
// Immunization
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "date"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "status"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].type = #Immunization
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL
* rest.resource[=].documentation = "* Based upon the ONC U.S. Core Data for Interoperability (USCDI) requirements, CVX vaccine codes are required and the NDC vaccine codes **SHOULD** be supported as translations to them."
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = #SHOULD
* rest.resource[=].searchRevInclude = "Provenance:target"
* rest.resource[=].searchRevInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchRevInclude.extension.valueCode = #SHALL
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-immunization-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a id value and **MAY** provide both the Type and id values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-immunization-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-immunization-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "A client **SHALL** provide a value precise to the *second + time offset*.\n\nA server **SHALL** support a value precise to the *second + time offset*."

// Location
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].type = #Location
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-location"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL
* rest.resource[=].documentation = "* The US Core Location  and PractitionerRole Profiles are not explicitly referenced in any US Core Profile. However they **SHOULD** be used as the default profile if referenced by another US Core profile."
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = #SHOULD
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-location-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "address"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-location-address"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "address-city"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-location-address-city"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "address-state"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-location-address-state"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "address-postalcode"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-location-address-postalcode"
* rest.resource[=].searchParam[=].type = #string

// Medication
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].type = #Medication
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-medication"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL
* rest.resource[=].documentation = "The  MedicationRequest resource can represent a medication, using an external reference to a Medication resource. If an external Medication Resource is used in a MedicationRequest, then the READ  **SHALL**  be supported."
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = #SHOULD

// MedicationDispense
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "status"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "type"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "status"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].type = #MedicationDispense
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-medicationdispense"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL
* rest.resource[=].documentation = "The MedicationDispense resources can represent a medication using either a code or refer to the Medication resource. When referencing Medication, the resource may be [contained](http://hl7.org/fhir/R4/references.html#contained) or an external resource. The server application **MAY** choose any one way or more than one method, but if an external reference to Medication is used, the server **SHALL** support the _include` parameter for searching this element. The client application must support all methods. For example, A server **SHALL** be capable of returning all medications for a patient using one of or both: `GET /MedicationDispense?patient=[id]` `GET /MedicationDispense?patient=[id]&_include=MedicationDispense:medication`"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = #SHOULD
* rest.resource[=].searchInclude = "MedicationDispense:medication"
* rest.resource[=].searchInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude.extension.valueCode = #SHOULD
* rest.resource[=].searchRevInclude = "Provenance:target"
* rest.resource[=].searchRevInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchRevInclude.extension.valueCode = #SHALL
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-medicationdispense-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-medicationdispense-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-medicationdispense-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a id value and **MAY** provide both the Type and id values.\n\nThe server **SHALL** support both."

// MedicationRequest
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "intent"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "encounter"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "intent"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "status"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "intent"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "authoredon"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "intent"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].type = #MedicationRequest
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL
* rest.resource[=].documentation = "The MedicationRequest resources can represent a medication using either a code or refer to the Medication resource. When referencing Medication, the resource may be [contained](http://hl7.org/fhir/R4/references.html#contained) or an external resource. The server application **MAY** choose any one way or more than one method, but if an external reference to Medication is used, the server **SHALL** support the _include` parameter for searching this element. The client application must support all methods. For example, A server **SHALL** be capable of returning all medications for a patient using one of or both: `GET /MedicationRequest?patient=[id]` `GET /MedicationRequest?patient=[id]&_include=MedicationRequest:medication`"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = #SHOULD
* rest.resource[=].searchInclude = "MedicationRequest:medication"
* rest.resource[=].searchInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude.extension.valueCode = #SHOULD
* rest.resource[=].searchRevInclude = "Provenance:target"
* rest.resource[=].searchRevInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchRevInclude.extension.valueCode = #SHALL
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-medicationrequest-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "intent"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-medicationrequest-intent"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-medicationrequest-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a id value and **MAY** provide both the Type and id values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "encounter"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-medicationrequest-encounter"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a id value and **MAY** provide both the Type and id values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "authoredon"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-medicationrequest-authoredon"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "A client **SHALL** provide a value precise to the *second + time offset*.\n\nA server **SHALL** support a value precise to the *second + time offset*."

// Observation
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
// removed extension[1] error
// * rest.resource[=].extension[=].extension[0].url = "required"
// * rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
// * rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
// * rest.resource[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "code"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "date"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "status"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "date"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "code"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].type = #Observation
* rest.resource[=].supportedProfile[0] = "http://hl7.org/fhir/us/core/StructureDefinition/pediatric-bmi-for-age"
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/core/StructureDefinition/pediatric-weight-for-height"
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-pulse-oximetry"
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-smokingstatus"
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/core/StructureDefinition/head-occipital-frontal-circumference-percentile"
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/core/StructureDefinition/pediatric-weight-for-height"
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-pulse-oximetry"
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab"
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/StructureDefinition/vitalsigns"
* rest.resource[=].supportedProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile[=].extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile[=].extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile[=].extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile[=].extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile[=].extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile[=].extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile[=].extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = #SHOULD
* rest.resource[=].searchRevInclude = "Provenance:target"
* rest.resource[=].searchRevInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchRevInclude.extension.valueCode = #SHALL
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-observation-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "category"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-observation-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-observation-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-observation-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "A client **SHALL** provide a value precise to the *second + time offset*.\n\nA server **SHALL** support a value precise to the *second + time offset*."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-observation-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a id value and **MAY** provide both the Type and id values.\n\nThe server **SHALL** support both."

// Organization
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].type = #Organization
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL
* rest.resource[=].documentation = "* Systems **SHALL** support National Provider Identifier (NPI) for organizations and **SHOULD** support Clinical Laboratory Improvement Amendments (CLIA) identifiers for `Organization.Identifier`."
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = #SHOULD
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-organization-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "address"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-organization-address"
* rest.resource[=].searchParam[=].type = #string

// Patient
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
// fix extension[1] errors
// * rest.resource[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "birthdate"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "family"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "family"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "gender"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "birthdate"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "name"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "gender"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "name"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "death-date"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "family"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].type = #Patient
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL
* rest.resource[=].documentation = "* For ONC's USCDI requirements, each Patient must support the following additional elements. These elements are included in the formal definition of the profile. The patient examples include all of these elements.\n\n  1. contact detail (e.g. a telephone number or an email address)\n  1. a communication language\n  1. a race\n  1. an ethnicity\n  1. a birth sex*\n  1. previous name\n     - Previous name is represented by providing an end date in the `Patient.name.period` element for a previous name.\n  1. suffix\n     - Suffix is represented using the `Patient.name.suffix` element.\n* The Patient's Social Security Numbers **SHOULD NOT** be used as a patient identifier in `Patient.identifier.value`."
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = #SHOULD
* rest.resource[=].searchRevInclude = "Provenance:target"
* rest.resource[=].searchRevInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchRevInclude.extension.valueCode = #SHALL
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "birthdate"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-birthdate"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "A client **SHALL** provide a value precise to the *day*.\n\nA server **SHALL** support a value a value precise to the *day*."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "death-date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-death-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "A client **SHALL** provide a value precise to the *day*.\n\nA server **SHALL** support a value a value precise to the *day*."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "family"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-family"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A server **SHALL** support a value precise to the *day*."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "gender"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-gender"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "given"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-given"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].operation.name = "member-match"
* rest.resource[=].operation.definition = "http://hl7.org/fhir/us/davinci-hrex/OperationDefinition/member-match"

// Practitioner
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].type = #Practitioner
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL
* rest.resource[=].documentation = "Servers that support only US Core Practitioner Profile **SHALL** provide implementation specific guidance how to access a provider’s location and contact information using only the Practitioner resource.\n"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = #SHOULD
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-practitioner-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-practitioner-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-practitioner-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."

// PractitionerRole
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].type = #PractitionerRole
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL
* rest.resource[=].documentation = "* The US Core Location  and PractitionerRole Profiles are not explicitly referenced in any US Core Profile. However they **SHOULD** be used as the default profile if referenced by another US Core profile."
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = #SHOULD
* rest.resource[=].searchInclude[0] = "PractitionerRole:endpoint"
* rest.resource[=].searchInclude[+] = "PractitionerRole:practitioner"
* rest.resource[=].searchInclude[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude[=].extension.valueCode = #SHOULD
* rest.resource[=].searchInclude[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "specialty"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-practitionerrole-specialty"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "practitioner"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-practitionerrole-practitioner"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a id value and **MAY** provide both the Type and id values.\n\nThe server **SHALL** support both."

// Procedure
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "code"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "date"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHOULD
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "status"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "date"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].type = #Procedure
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL
* rest.resource[=].documentation = "* Procedure codes can be taken from SNOMED-CT, CPT, HCPCS II, ICD-10-PCS, CDT. LOINC.\n  * Only LOINC concepts that reflect actual procedures **SHOULD** be used\n* A procedure including an implantable device **SHOULD** use `Procedure.focalDevice` with a reference to the *US Core Implantable Device Profile*."
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].referencePolicy.extension.valueCode = #SHOULD
* rest.resource[=].searchRevInclude = "Provenance:target"
* rest.resource[=].searchRevInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchRevInclude.extension.valueCode = #SHALL
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-procedure-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-procedure-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a id value and **MAY** provide both the Type and id values.\n\nThe server **SHALL** support both."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-procedure-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "A client **SHALL** provide a value precise to the *second + time offset*.\n\nA server **SHALL** support a value precise to the *second + time offset*."
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/core/SearchParameter/us-core-procedure-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The client **SHALL** provide at least a code value and **MAY** provide both the system and code values.\n\nThe server **SHALL** support both."

// Provenance
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].type = #Provenance
* rest.resource[=].supportedProfile[0] = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provenance"
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-provenance"
* rest.resource[=].supportedProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile[=].extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile[=].extension.valueCode = #SHALL
* rest.resource[=].documentation = "If a system receives a provider in `Provenance.agent.who` as free text they must capture who sent them the information as the organization. On request they **SHALL** provide this organization as the source and **MAY** include the free text provider."
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #patch
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].referencePolicy = #resolves

// ValueSet
* rest.resource[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHOULD
* rest.resource[=].type = #ValueSet
* rest.resource[=].operation.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].operation.extension.valueCode = #SHOULD
* rest.resource[=].operation.name = "expand"
* rest.resource[=].operation.definition = "http://hl7.org/fhir/OperationDefinition/ValueSet-expand"
* rest.resource[=].operation.documentation = "A client can determine the note and report types support by a server by invoking the standard FHIR Value Set Expansion ($expand) operation defined in the FHIR R4 specification. Because servers may support different read and write formats, it also is used to determine the formats (for example, text, pdf) the server supports read and write transactions."
* rest.interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.interaction[=].extension.valueCode = #MAY
* rest.interaction[=].code = #transaction
* rest.interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.interaction[=].extension.valueCode = #MAY
* rest.interaction[=].code = #batch
* rest.interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.interaction[=].extension.valueCode = #MAY
* rest.interaction[=].code = #search-system
* rest.interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.interaction[=].extension.valueCode = #MAY
* rest.interaction[=].code = #history-system
