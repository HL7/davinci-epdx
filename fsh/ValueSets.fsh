/*
  Value Sets for Payer Data Exchange
*/

<<<<<<< HEAD
ValueSet: ProvenanceAgentType
Title: "Provenance Agent Type"
Description: "Agent role performed relating to referenced resource"
  * codes from system ProvenanceAgentRoleTypeCS


ValueSet: ProvenancePayerConversionSource
Title: "Source Data conversion"
  * codes from system ProvenancePayerDataSourceCS

// Taken from CARIN-BB
ValueSet: FDANationalDrugCode
Title: "FDA National Drug Code (NDC)"
Description: "FDA National Drug Code (NDC)"
  * codes from system $FDANationalDrugCodeCS
=======
ValueSet: ProvenancePayerAgent
Title: "Payer Agent Type"
Description: "Agent role that payer performs"
  * codes from system ProvenancePayerAgentCS


ValueSet: ProvenanceFormatConversionSourceVS
Title: "Source Data conversion"
  * codes from system ProvenanceConversionSourceCS
>>>>>>> master
