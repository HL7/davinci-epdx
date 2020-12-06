//
//  Value Sets for Payer Data Exchange
//

ValueSet: ProvenanceAgentType
Title:        "Provenance Agent Type"
Description:  "Agent role performed relating to referenced resource"
  * codes from system ProvenanceAgentRoleType
  * ^jurisdiction.coding = urn:iso:std:iso:3166#US


ValueSet: ProvenancePayerSourceFormat
Title: "Payer source of data"
Description: "Source Data formats used as the source for FHIR referenced record by the Payer."
  * codes from system ProvenancePayerDataSource
  * ^jurisdiction.coding = urn:iso:std:iso:3166#US

// Taken from CARIN-BB
ValueSet: FDANationalDrugCode
Title: "FDA National Drug Code (NDC)"
// Description: "FDA National Drug Code (NDC)"
Description: "The Drug Listing Act of 1972 requires registered drug establishments to provide the Food and Drug Administration (FDA) with a current list of all drugs manufactured, prepared, propagated, compounded, or processed by it for commercial distribution.  (See Section 510 of the Federal Food, Drug, and Cosmetic Act (Act) (21 U.S.C. § 360)). Drug products are identified and reported using a unique, three-segment number, called the National Drug Code (NDC), which serves as a universal product identifier for drugs. FDA publishes the listed NDC numbers and the information submitted as part of the listing information in the NDC Directory which is updated daily.

The information submitted as part of the listing process, the NDC number, and the NDC Directory are used in the implementation and enforcement of the Act.

Users should note:

Starting June 1, 2011, only drugs for which electronic listings (SPL) have been submitted to FDA are included in the NDC Directory. Drugs for which listing information was last submitted to FDA on paper forms, prior to June 2009, are included on a separate file and will not be updated after June 2012.

Information regarding the FDA published NDC Directory can be found [here](https://www.fda.gov/drugs/drug-approvals-and-databases/national-drug-code-directory)

Users should note a few important items

*   The NDC Directory is updated daily.
*   The new NDC Directory contains ONLY information on final marketed drugs submitted to FDA in SPL electronic listing files by labelers.
*   The NDC Directory does not contain all listed drugs. The new version includes the final marketed drugs which listing information were submitted electronically. It does not include animal drugs, blood products, or human drugs that are not in final marketed form, such as Active Pharmaceutical Ingredients(APIs), drugs for further processing, drugs manufactured exclusively for a private label distributor, or drugs that are marketed solely as part of a kit or combination product or inner layer of a multi-level packaged product not marketed individually. For more information about how certain kits or multi-level packaged drugs are addressed in the new NDC Directory, see the NDC Directory Package File definitions document. For the FDA Online Label Repository page and additional resources go to: [FDA Online Label Repository](https://labels.fda.gov/)"
//  * codes from system $FDANationalDrugCode
  * ^copyright = "NDC codes have no copyright acknowledgment or license requirements."
//
  * codes from system $FDANationalDrugCodeCS
  * ^jurisdiction.coding = urn:iso:std:iso:3166#US
