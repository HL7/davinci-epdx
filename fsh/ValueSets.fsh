/*
  Value Sets for Payer Data Exchange
*/

ValueSet: ProvenanceAgentType
Title: "Provenance Agent Type"
Description: "Agent role performed relating to referenced resource"
  * codes from system ProvenanceAgentRoleTypeCS
  * ^jurisdiction = urn:iso:std:iso:3166#US


ValueSet: ProvenancePayerConversionSource
Title: "Source Data conversion"
  * codes from system ProvenancePayerDataSourceCS
  * ^jurisdiction = urn:iso:std:iso:3166#US

// Taken from CARIN-BB
ValueSet: FDANationalDrugCode
Title: "FDA National Drug Code (NDC)"
Description: "FDA National Drug Code (NDC)"
  * codes from system $FDANationalDrugCodeCS
  * ^jurisdiction = urn:iso:std:iso:3166#US
