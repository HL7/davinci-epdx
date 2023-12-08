// ------------------------------
Profile: PDexProviderGroup
//Parent: $DaVinciPatientList
Parent: $ATRGroup
Id: pdex-provider-group
Title: "PDex Provider Group"
Description: "The Provider Attribuion Group List. Based on the Da Vinci Attribution Group Profile with the addition of an extenson to track latest download for a member. Each member element in the Group record, that is processed by the export operation, should be updated with the execution date/time in lastTransmitted, list of resources (_type) in lastResources and query filters (_typeFilter) in lastFilters."
* insert PdexStructureDefinitionContent
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm

* member.extension contains LastTransmission named lastTransmitted 0..1 MS and
   LastTypes named lastResources 0..1 MS and
   LastFilters named lastFilters 0..1 MS

* member.extension[lastTransmitted] ^comment = "Use the data/time of execution of the export operation"
* member.extension[lastResources] ^comment = "Take the comma-delimited string value from the _type parameter in the export operation request."
* member.extension[lastFilters] ^comment = "Take the comma-delimited string value from the _typeFilter parameter in the export operation request."





