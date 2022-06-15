Profile:        MtlsBundle
Parent:         Bundle
Id:             mtls-bundle
Title:          "mTLS Endpoint Bundle"
Description:    "A bundle of Endpoint and Organization resources to enable mTLS endpoint discovery and configuration."
* insert PdexStructureDefinitionContent
* type 1..1 MS
* type ^short = "Fixed=Collection"
* type from BundleTypeVS (required)
* timestamp 1..1 MS
* timestamp ^short = "Date of creation"
* entry.resource only MtlsOrganization
* signature 1..1 MS
* signature ^short = "Digital signature of Submitting Payer"
// -------------------------------------

Alias: $BundleTypeCS = http://hl7.org/fhir/bundle-type

ValueSet: BundleTypeVS
Title: "mTLS Bundle Type Value Set"
Description:  "Categories of bundle."
* codes from system $BundleTypeCS
* $BundleTypeCS#collection   // Bundle is always collection
