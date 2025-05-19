// Invariants
//Invariant: EOB-institutional-item-or-header-adjudication
//Description: "Institutional EOB:  Should have adjudication at the item or header level, but not both"
//Expression: "(adjudication.exists() != item.adjudication.exists())"
//Severity: #error

Invariant: adjudication-has-amount-type-slice
Description: "If Adjudication is present, it must have at least one adjudicationamounttype slice"
Expression: "(adjudication.exists().not() or adjudication.where(category.memberOf('http://hl7.org/fhir/us/davinc-pdex/ValueSet/PDEXAdjudication')).exists())"
Severity: #warning
////Expression: "(adjudication.exists().not() or adjudication.where(category.memberOf('http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDEXAdjudication')).exists())"
//Expression: "adjudication.exists()"


// RuleSets
// RuleSet: CodeSystemStubBoilerplate
  // * ^publisher = "HL7 International - Financial Management Work Group"
  // * ^contact[0].name = "HL7 International - Financial Management Work Group"
  // * ^contact[0].telecom[0].system = #url
  // * ^contact[0].telecom[0].value = "http://hl7.org/Special/committees/fm"
  // * ^contact[0].telecom[1].system = #email
  // * ^contact[0].telecom[1].value = "fmlists@lists.hl7.org"
  // * ^contact[1].name = "Jean Duteau"
  // * ^contact[1].telecom[0].system = #email
  // * ^contact[1].telecom[0].value = "mailto:jean@duteaudesign.com"
  // * ^jurisdiction[0].coding[0].system = "urn:iso:std:iso:3166"
  // * ^jurisdiction[0].coding[0].code = #US
  // * ^jurisdiction[0].coding[0].display = "United States of America"
  // * ^content = #not-present

RuleSet: ItemAdjudicationInvariant
* item obeys adjudication-has-amount-type-slice

RuleSet: AdjudicationInvariant
* obeys adjudication-has-amount-type-slice

RuleSet: AdjudicationSlicing
* adjudication ^slicing.rules = #closed
* adjudication ^slicing.discriminator.path = "category"
* adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* adjudication ^slicing.description = "Slice based on value pattern"
* adjudication ^slicing.discriminator.type = #pattern
* adjudication.category 1..1 MS
* adjudication.category from PDexAdjudicationCategoryDiscriminator (required)

RuleSet: ItemAdjudicationSlicing
* item.adjudication ^slicing.rules = #closed
* item.adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* item.adjudication ^slicing.description = "Slice based on value pattern"
* item.adjudication ^slicing.discriminator.type = #pattern
* item.adjudication ^slicing.discriminator.path = "category"
* item.adjudication.category from PDexAdjudicationCategoryDiscriminator (required)

RuleSet: ItemAdjudicationExtensionSlicing
* item.adjudication.extension ^slicing.rules = #closed
* item.adjudication.extension ^slicing.ordered = false   // can be omitted, since false is the default
* item.adjudication.extension ^slicing.description = "Slice based on value pattern"
* item.adjudication.extension ^slicing.discriminator.type = #pattern
* item.adjudication.extension ^slicing.discriminator.path = "category"
* item.adjudication.category from PDexAdjudicationCategoryDiscriminator (required)



// RuleSet: EOBHeaderItemAdjudicationInvariant
// * obeys EOB-institutional-item-or-header-adjudication

RuleSet: HCPCSCopyrightNotice
* ^copyright = "See information on the use of HCPCS Level I (proprietary and owned by American Medical Association) and Level II codes [here](https://www.cms.gov/Medicare/Coding/MedHCPCSGenInfo/HCPCS_Coding_Questions)"

RuleSet: Metaprofile-supportedProfile-slice
* meta.profile ^slicing.discriminator.type = #pattern
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.ordered = false
* meta.profile ^slicing.description = "Slice based on value"
* meta.profile contains supportedProfile 1..1

// RuleSet: Agenttype-provenanceCommitter-slice
// * agent ^slicing.discriminator.type = #pattern
// * agent ^slicing.discriminator.path = "$this"
// * agent ^slicing.rules = #open
// * agent ^slicing.ordered = false
// * agent ^slicing.description = "Slice based on value"
// * agent contains ProvenanceCommitter 0..*

//------------------------------------------------
// RuleSets for Operation Parameter Insert
RuleSet: parameter(name, use, min, max, type, targetProfile, documentation)
* name = {name}
* use = {use}
* min = {min}
* max = {max}
* type = {type}
* targetProfile = {targetProfile}
* documentation = {documentation}

RuleSet: parameterComplex(name, use, min, max, documentation)
* name = {name}
* use = {use}
* min = {min}
* max = {max}
* documentation = {documentation}

