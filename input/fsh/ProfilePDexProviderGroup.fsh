// ------------------------------
Profile: PDexProviderGroup
//Parent: $DaVinciPatientList
Parent: $ATRGroup
Id: pdex-provider-group
Title: "PDex Provider Group"
Description: "The Provider Attribution Group List. Based on the Da Vinci Attribution Group (ATRGroup) Profile. The member element represents the patients attributed to the provider for data access purposes."
* ^experimental = true
* insert PdexStructureDefinitionContent
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #fm
* code 1..1 MS
* code from http://hl7.org/fhir/us/davinci-pdex/ValueSet/PDexMultiMemberMatchResultVS
* characteristic.code MS
* characteristic.code = $MemberAttribution#pdexprovidergroup "PDex Provider Group"
* characteristic.valueReference MS
* characteristic.valueReference ^comment = "Provider/Organization Identifier Reference that is being attributed with members"
* characteristic.exclude = false
* characteristic.exclude ^comment = "Exclude is set to False"
* characteristic.period MS
* characteristic.period ^comment = "Enter date attribution was created or updated.(i.e. current date) as Period.start"

* extension contains MembersOptedOut named optedOut 0..1 MS
* extension[optedOut] ^comment = "Number of would be attributed Members that used their right to Opt-out of sharing data with providers."




