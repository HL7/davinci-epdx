//
//  Search Parameters for Payer Data Exchange
//

// Search Parameter for Consent provision type (deny/permit)
Instance: pdex-consent-provision-type
InstanceOf: SearchParameter
Usage: #definition
Title: "PDex Consent Provision Type Search Parameter"
* url = "http://hl7.org/fhir/us/davinci-pdex/SearchParameter/pdex-consent-provision-type"
* version = "2.1.0"
* name = "PDexConsentProvisionType"
* status = #active
* experimental = true
* description = "Search for Consent resources by the provision type (deny or permit). Use provision-type=deny combined with provision-action=disclose to find members who have opted out of Provider Access data sharing."
* code = #provision-type
* base = #Consent
* type = #token
* expression = "Consent.provision.type"
* xpath = "f:Consent/f:provision/f:type"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true

// Search Parameter for Consent action code
Instance: pdex-consent-action
InstanceOf: SearchParameter
Usage: #definition
Title: "PDex Consent Action Search Parameter"
* url = "http://hl7.org/fhir/us/davinci-pdex/SearchParameter/pdex-consent-action"
* version = "2.1.0"
* name = "PDexConsentAction"
* status = #active
* experimental = true
* description = "Search for Consent resources by the action code in the provision. Use provision-action=disclose combined with provision-type=deny to find members who have opted out of Provider Access data sharing."
* code = #provision-action
* base = #Consent
* type = #token
* expression = "Consent.provision.action"
* xpath = "f:Consent/f:provision/f:action"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true

// Search Parameter for Group characteristic.valueReference
// Resolves FHIR-51845: the standard Group 'value' search parameter only covers
// characteristic.valueCodeableConcept and characteristic.valueBoolean; there is
// no base search parameter for characteristic.valueReference. This custom parameter
// enables searching PDexMemberMatchGroup and PDexProviderGroup by the requesting
// payer/provider Organization reference stored in characteristic.valueReference.
Instance: pdex-group-characteristic-value-reference
InstanceOf: SearchParameter
Usage: #definition
Title: "PDex Group Characteristic Value Reference Search Parameter"
* url = "http://hl7.org/fhir/us/davinci-pdex/SearchParameter/pdex-group-characteristic-value-reference"
* version = "2.2.0"
* name = "PDexGroupCharacteristicValueReference"
* status = #active
* experimental = true
* description = "Search for Group resources by the Reference value of a characteristic. Used to find PDex Member Match Groups and Provider Groups associated with a specific requesting payer or provider Organization (stored in characteristic.valueReference)."
* code = #characteristic-value-reference
* base = #Group
* type = #reference
* expression = "Group.characteristic.value.ofType(Reference)"
* xpathUsage = #normal
* multipleOr = false
* multipleAnd = true
* target[+] = #Organization

// Search Parameter for Provider Access Use Case extension
Instance: pdex-consent-provider-access
InstanceOf: SearchParameter
Usage: #definition
Title: "PDex Consent Provider Access Use Case Search Parameter"
* url = "http://hl7.org/fhir/us/davinci-pdex/SearchParameter/pdex-consent-provider-access"
* version = "2.1.0"
* name = "PDexConsentProviderAccess"
* status = #active
* experimental = true
* description = "Search for Consent resources that have the Provider Access Use Case extension set to true. This identifies consent records specific to the Provider Access API."
* code = #provider-access
* base = #Consent
* type = #token
* expression = "Consent.provision.action.extension.where(url='http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provider-access-use-case').value"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
