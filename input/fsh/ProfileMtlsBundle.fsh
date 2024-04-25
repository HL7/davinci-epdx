Profile: MtlsBundle
Parent: Bundle
Id: mtls-bundle
Title: "mTLS Endpoint Bundle"
Description: "A bundle of Endpoint and Organization resources to enable mTLS endpoint discovery and configuration."
* insert PdexStructureDefinitionContent
* type 1..1 MS
* type ^short = "Fixed=Collection"
* type from $BundleTypeVS (required)
* timestamp 1..1 MS
* timestamp ^short = "Date of creation"
//* entry 0..*
//* entry[0].resource
//* entry[0].resource.meta
//* entry[0].resource.meta.profile = MtlsOrganization
//* entry[1].resource
//* entry[1].resource.meta
//* entry[1].resource.meta.profile = MtlsEndpoint
//* entry[2].resource
//* entry[2].resource.meta
//* entry[2].resource.meta.profile = MtlsOrganization
* signature 1..1 MS
* signature ^short = "Digital signature of Submitting Payer"
// -------------------------------------

Alias: $BundleTypeCS = http://hl7.org/fhir/bundle-type
Alias: $BundleTypeVS = http://hl7.org/fhir/ValueSet/bundle-type

// ValueSet: BundleTypeVS
// Title: "mTLS Bundle Type Value Set"
// Description: "Categories of bundle."
// * ^experimental = true
// * codes from system $BundleTypeCS
// * $BundleTypeCS#collection   // Bundle is always collection
// * ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
// * ^extension.valueCode = #fm
