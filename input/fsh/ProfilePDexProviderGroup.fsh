// ------------------------------
Profile: PDexProviderGroup
//Parent: $DaVinciPatientList
Parent: $ATRGroup
Id: pdex-provider-group
Title: "PDex Provider Group"
Description: "The Provider Attribution Group List. Based on the Da Vinci Attribution Group (ATRGroup) Profile with the addition of extensions to track latest download for a member. Each member element in the Group record, that is processed by the export operation, should be updated with the execution date/time in lastTransmitted, list of resources (resourceTypes) in lastResources and query filters (filterQueries) in lastFilters."
* insert PdexStructureDefinitionContent
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm
* extension contains MembersOptedOut named optedOut 0..1 MS
* extension[optedOut] ^comment = "Number of would be attributed Members that used their right to Opt-out of sharing data with providers."
* member.extension contains  
   LastTransmission named lastTransmitted 0..1 MS and
   LastTypes named lastResources 0..1 MS and
   LastFilters named lastFilters 0..1 MS

* member.extension[lastTransmitted] ^comment = "Use the data/time of execution of the #DavinciDataexport operation"
* member.extension[lastResources] ^comment = "Take the comma-delimited string value from the $DaVinci-data-export.resourceTypes parameter in the operation request."
* member.extension[lastFilters] ^comment = "Take the comma-delimited string value from the $DaVinci-data-export.filterQueries parameter in the operation request."




