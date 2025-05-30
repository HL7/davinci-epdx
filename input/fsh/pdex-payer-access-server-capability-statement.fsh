Instance: pdex-payer-access-server
InstanceOf: CapabilityStatement
Title: "PDex Payer-Access Server CapabilityStatement"
Description: "This Section describes the expected capabilities of the PDex Payer-to-Payer API Server actor which supports US Core 3.1.1 or US Core 6.1.0 and is responsible for providing responses to the queries submitted by PDex Payer-to-Payer Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by PDex Payer Access Server for US Core 3.1.1 and US Core 6.1.0 are defined. PDex Payer Access Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements."
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* extension.valueCode = #fm
* url = "http://hl7.org/fhir/us/davinci-pdex/CapabilityStatement/pdex-payer-access-server"
* version = "2.1.0"
* name = "PdexPayerAccessServerCapabilityStatement"
* title = "PDex Payer Access Server CapabilityStatement"
* status = #active
* experimental = false
* date = "2024-05-02"
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
* description = "This Section describes the expected capabilities of the PDex Payer Access Server actor which is responsible for providing responses to the queries submitted by the PDex Payer Access Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by PDex Payer Access Servers are defined. PDex Payer Access Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json
* patchFormat = #application/json-patch+json
* implementationGuide = "http://hl7.org/fhir/us/davinci-pdex/ImplementationGuide/hl7.fhir.us.davinci-pdex|2.1.0"
* rest.mode = #server
* rest.documentation = "The PDex Payer Access Server **SHALL**: \n1. Support the US Core 3.1.1 or US Core 6.1.0 resources accessed via the Group resource.\n2. Implement the RESTful behavior according to the FHIR specification for bulk asynchronous access.\n3. Support json source formats for all US Core and PDex interactions. \n4. Return the following response classes:\n  - (Status 400): invalid parameter\n  - (Status 401/4xx): unauthorized request\n  - (Status 403): insufficient scope \n  - (Status 404): unknown resource \n  - (Status 410): deleted resource.\n\nThe PDex Payer Access Server **SHOULD**: \n1. Identify the US Core profiles supported as part of the FHIR `meta.profile` attribute for each instance."
* rest.security.description = "1. See the [US Core Security Considerations](http://hl7.org/fhir/us/core/security.html) section for requirements and recommendations. 2. A server **SHALL** reject any unauthorized requests by returning an `HTTP 401` unauthorized response code."
* rest.resource[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
// ------------------------------------

// Update Group
* rest.resource[=].type = #Group
* rest.resource[=].supportedProfile[0] = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-member-match-group"
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
