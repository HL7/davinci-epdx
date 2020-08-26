/*
  Value Sets for Payer Data Exchange
*/

ValueSet: ProvenanceAgentType
Title: "Provenance Agent Type"
Description: "Agent role performed relating to referenced resource"
  * codes from system ProvenanceAgentRoleType
  * ^jurisdiction = urn:iso:std:iso:3166#US


ValueSet: ProvenancePayerSourceFormat
Title: "Source of Data"
Description: "Source Data formats used as the source for FHIR referenced record by the Payer."
  * codes from system ProvenancePayerDataSource
  * ^jurisdiction = urn:iso:std:iso:3166#US

// Taken from CARIN-BB
ValueSet: FDANationalDrugCode
Title: "FDA National Drug Code (NDC)"
Description: "FDA National Drug Code (NDC)"
  * codes from system $FDANationalDrugCodeCS
  * ^jurisdiction = urn:iso:std:iso:3166#US
