[Previous Page - PDex Implementation Actors, Interactions, Data Payloads and Methods](PDexImplementationActorsInteractionsDataPayloadsandMethods.html)

Health Plans **SHALL** map claims and clinical information for a member to US Core v3.1.0 FHIR Resources based on R4.

US Core has expanded upon the original Argonaut profiles as the FHIR specification has also matured. As the Da Vinci project tackles more use cases and creates further implementation Guides additional profiles that are used across multiple IGs will be implemented in the HRex IG. As those profiles mature and achieve adoption they **MAY** be offered up to US Realm for incorporation into a future version of US Core.

Where a [US Core FHIR R4](http://hl7.org/fhir/us/core/) Resource is not defined Health Plans **SHALL** map claims and clinical information to FHIR Profiles defined in this IG, or the Da Vinci HRex IG.

The mapping of patient, coverage and claims information to the relevant FHIR US Core and Da Vinci PDex/HRex profiles is covered in this section.

Dental and vision information are considered part of the Health Plan record for the specific member and, when it is available, **SHOULD** be included in the exchanges described in this IG.

Mapping is also required when data is exchanged between systems. The PDex IG exchanges are centered around Member/Patients. FHIR Platforms generate their own ids when creating resources. Consequently a Patient resource in one system can have a different FHIR Resource ID from a Patient in another system. When a bundle of resources are retrieved from a Health Plan's FHIR API it will be necessary to map identifiers to determine whether a record in the target system needs to be updated or created. The following step-by-step approach is proposed for handling the import of a bundle of resources received as part of a Patient-everything FHIR bundle.

In the steps below "Received" refers to the information requested from a Health Plan's FHIR API. "Target" refers to the target FHIR API of the organization making the request. In the Payer to Payer exchange scenario the New Plan is the Target and the Old Health Plan provides the "Received" bundle. 

1. Use the received Patient resource to match to the target Patient resource. Use the Target Patient Resource ID for any Patient references used in subsequently imported records from the Received bundle.
2. Update the Target Patient Resource to add the Received Patient Ids from the Received Patient Resource.
3. Identify Received Practitioner resources in the bundle and use NPI, where available, to map to the Target Practitioner Resources. If the Practitioner is not found in the Target system create a record. Use the Target Practitioner Resource ID for any references to this Practitioner in the received bundle.
4. Identify Received Organization resources in the bundle and use NPI, where available, to map to the Target Organization Resources. If the Organization is not found in the Target system create a record. Use the Target Organization Resource ID for any references to this Organization in the received bundle.
5. Identify Received Location resources in the bundle and map to Target Location resources. If the Location is not found in the Target system create a record. Use the Target Organization Resource ID for any references to this Location in the received bundle.

It is recommended that the Id field in a resource be used to record the ID of the corresponding resource imported from a received bundle. This should simplify mapping for subsequent bundles received from the sending FHIR API.

**Providing data in sub-element fields**

In this data mapping section each profile has a listing of the minimum essential fields that are required to enable a US Core profile to be successfully validated. If a field is marked as required (cardinality n.., where n>0) the Health Plan **SHALL** populate the field and for a field specified as MUST SUPPORT and cardinality is 0.., the Health Plan SHALL be capable of populating the field and do so if the relevant data exists." If a field is marked as MUST SUPPORT the receiver must be able to consume it without generating an error., unless the field is a sub-element of another field where that parent field does NOT have a minimum cardinality of 1. For example, if the parent field has a cardinality of "0..1" or "0..\*" the sub-element field does not need to be populated.




[Next Page - US Core AllergyIntolerance](USCoreAllergyIntolerance.html)