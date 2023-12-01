// ------------------------------
Profile: PDexProviderGroup
Parent: $DaVinciPatientList
Id: pdex-provider-group
Title: "PDex Provider Group"
Description: "The Provider Attribuion Group List. Based on the Da Vinci Attribution Group Profile with the addition of an extenson to track latest download for a member."
* insert PdexStructureDefinitionContent
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm

* member.extension contains LastTransmission named lastTransmitted 0..1 MS and
   LastTypes named lastResources 0..1 MS and
   LastFilters named lastFilters 0..1 MS






