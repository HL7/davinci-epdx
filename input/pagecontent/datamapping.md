[Previous Page - Payer-to-Payer Bulk Exchange](payertopayerbulkexchange.html)

Health Plans **SHOULD** map claims and clinical information for a member to [US Core v3.1.1]({{site.data.fhir.ver.uscore3}}), [US Core v6.1.0]({{site.data.fhir.ver.uscore6}}) or [US Core v7.0.0]({{site.data.fhir.ver.uscore7}})FHIR Resources based on R4. This IG defers to the supporting specifications to map data to FHIR resources and avoids creating new profiles unless necessary, such as in the case of MedicationDispense when this was not defined in US Core 3.1.1.

US Core has expanded upon the original Argonaut profiles as the FHIR specification has also matured. As the Da Vinci project tackles more use cases and creates further Implementation Guides additional profiles that are used across multiple IGs will be implemented in the HRex IG. As those profiles mature and achieve adoption, they **MAY** be offered up to US Realm for incorporation into a future version of US Core.

Where a [US Core 3.1.1. FHIR R4]({{site.data.fhir.ver.uscore3}}),  [US Core 6.1.0. FHIR R4]({{site.data.fhir.ver.uscore6}}) or [US Core 7.0.0. FHIR R4]({{site.data.fhir.ver.uscore7}}) Resource is not defined Health Plans **SHALL** map claims and clinical information to FHIR Profiles defined in this IG, or the [Da Vinci HRex IG]({{site.data.fhir.ver.hrex}}).

The mapping of a patient's coverage and claims information to the relevant FHIR US Core and Da Vinci PDex/HRex profiles is covered in this section.

## Capability Statements

[PDex Server CapabilityStatement with US Core 6.1. support](CapabilityStatement-pdex-server-6-1.html) 

This Section describes the expected capabilities of the PDex with US Core 6.1 Support Server actor which is responsible for providing responses to the queries submitted by the PDex Requesters. The complete list of FHIR profiles, RESTful operations, and search parameters supported by PDex and US Core Servers are defined. Systems implementing this capability statement should meet the ONC 2015 Common Clinical Data Set (CCDS) access requirement for Patient Selection 170.315(g)(7) and Application Access - Data Category Request 170.315(g)(8) and the ONC [U.S. Core Data for Interoperability (USCDI) Version 3 July 2022](https://www.healthit.gov/isa/sites/isa/files/2022-07/USCDI-Version-3-July-2022-Final.pdf).  PDex Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements.

[PDEX Server CapabilityStatement](CapabilityStatement-pdex-server.html)

This Section describes the expected capabilities of the PDex Server actor which supports US Core 3.1.1 and is responsible for providing responses to the queries submitted by PDex Requesters. The complete list of FHIR profiles, RESTful operations, and search parameters supported by PDex Servers for US Core 3.1.1 are defined. PDex Clients have the option of choosing from this list to access necessary data based on their local use cases and other contextual requirements.

The profiles referenced in the Data Mapping Section are included in the above Server Capability Statements.

The CMS Prior Authorization Rule (CMS-0057) requires Claims and Encounter data to be exchanged with
Providers and Payers via the respective Provider Access API and Payer-to-Payer APIs, defined in this IG.
The Rule requires that a non-financial view of those claims and encounters are provided. This IG utilizes
the work of the [CARIN Consumer Directed Payer Data Exchange IG]({{site.data.fhir.ver.carinbb}}) which defines the following
non-financial profiles:

- [Inpatient Institutional Basis Profile]({{site.data.fhir.ver.carinbb}}/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-Basis.html) 
- [Outpatient Institutional Basis Profile]({{site.data.fhir.ver.carinbb}}/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-Basis.html)
- [Professional NonClinician Basis Profile]({{site.data.fhir.ver.carinbb}}/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician-Basis.html)
- [Oral Basis Profile]({{site.data.fhir.ver.carinbb}}/StructureDefinition-C4BB-ExplanationOfBenefit-Oral-Basis.html)
- [Pharmacy Basis Profile]({{site.data.fhir.ver.carinbb}}/StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy-Basis.html)


Oral and vision information are considered part of the Health Plan record for a specific member and, when it is available, **SHOULD** be included in the Payer-toPayer and Provider Access exchanges described in this IG, using the BASIS profiles defined in the [CARIN Consumer Directed Payer Data Exchange IG (CARIN IG for Blue Button®)](http://hl7.org/fhir/us/carin-bb/STU2/).

Mapping is also required when data is exchanged between systems. The PDex IG exchanges are centered around the Members/Patients. FHIR platforms generate their own ids when creating resources. Consequently, a Patient resource in one system can have a different FHIR Resource ID from that Patient in another system. When a bundle of resources is retrieved from a Health Plan's FHIR API it will be necessary to map identifiers to determine whether a record in the target system needs to be updated or created. The following step-by-step approach is proposed for handling the import of a bundle of resources received as part of a Patient-everything FHIR bundle.

In the steps below "Received" refers to the information requested from a Health Plan's FHIR API. "Target" refers to the target FHIR API of the organization making the request. In the Payer-to-Payer exchange scenario the New Plan is the Target, and the Old Health Plan provides the "Received" bundle. 

1. Use the received Patient resource to match to the target Patient resource. Use the Target Patient Resource ID for any Patient references used in subsequently imported records from the Received bundle.
2. Update the Target Patient Resource to add the Received Patient Ids from the Received Patient Resource.
3. Identify Received Practitioner resources in the bundle and use NPI, where available, to map to the Target Practitioner Resources. If the Practitioner is not found in the Target system, create a record. Use the Target Practitioner Resource ID for any references to this Practitioner in the received bundle.
4. Identify Received Organization resources in the bundle and use NPI, where available, to map to the Target Organization Resources. If the Organization is not found in the Target system, create a record. Use the Target Organization Resource ID for any references to this Organization in the received bundle.
5. Identify Received Location resources in the bundle and map to Target Location resources. If the Location is not found in the Target system, create a record. Use the Target Organization Resource ID for any references to this Location in the received bundle.

It is recommended that the Identifier field in a resource be used to record the ID of the corresponding resource imported from a received bundle. This should simplify mapping for subsequent bundles received from the sending FHIR API.

## Providing data in sub-element fields

In this data mapping section, each profile has a listing of the minimum essential fields that are required to enable a US Core profile to be successfully validated. If a field is marked as required (cardinality n.., where n>0) the Health Plan **SHALL** populate the field. For a field specified as MUST SUPPORT and the cardinality is 0.., the Health Plan **SHALL** be capable of populating the field and do so if the relevant data exists. If a field is marked as MUST SUPPORT the receiver must be able to consume it without generating an error, unless the field is a sub-element of another field where that parent field does NOT have a minimum cardinality of 1. For example, if the parent field has a cardinality of "0..1" or "0..\*" the sub-element field does not need to be populated.

## Mapping Adjudicated Claims and Encounter Information to Clinical Resources

A table providing a mapping from the [Consumer-Directed Payer Data Exchange IG](http://hl7.org/fhir/us/carin-bb/) to fields in the respective clinical profiles (US Core and PDex) is provided in the narrative pages for the following profiles:
- [US Core CareTeam](USCoreCareTeam.html)
- [US Core Condition](USCoreCondition.html)
- [US Core Encounter](USCoreEncounter.html)
- [US Core Patient](USCorePatient.html)
- [US Core Procedure](USCoreProcedure.html)
- [US Core Observation(s)](USCoreLaboratoryResultObservation.html)
- [HRex Coverage](coverage.html)
- [PDex MedicationDispense](PDexMedicationDispense.html).

Tables are provided to assist implementers in mapping adjudicated claims data represented in the Consumer-Directed Payer Data Exchange IG to clinical resources that may be exchanged as part of workflows identified in this Da Vinci Payer Data Exchange IG. The tables identify the source profile element and the associated Common Payer Consumer Data Set (CPCDS) mapping. CPCDS is a format developed by a consortium of health plans to support the creation of Consumer-Directed Payer Data Exchange IG resources from claims and associated data. CPCDS is not a HL7-managed data set. It is provided only as an informative resource to assist health plans in mapping data to FHIR profiles in a consistent manner. This mapping information is provided as guidance only. It may require payers to use discretion in mapping claims data to the relevant clinical resources.

With the CMS Prior Authorization Rule (CMS-0057) recommending the series of Da Vinci Burden Reduction Implementation Guides (Coverage Requirements Discovery, Documents Templates and Rules and Prior Authorization Support) it is expected that Payers will receive more clinical data from Providers. Much of that data will be in structured form, as defined by the US Core Implementation Guide. The Payer-to-Payer Bulk API also requires the exchange of unstructured data that supports a Prior Authorization decision. Such data would be embedded in a DocumentReference resource for exchange. This is likely to result in Payers having far more clinical data to exchange wih Members, Providers and other Payers.

The column definitions are provided in the table below. Look for this style of table in the Data Mapping pages and Profiles defined in this IG.

{% include style_insert_table_blue.html %}

| US Core/PDex Element                                                    | Must Support                       | Cardinality | CARIN-BB Element          | CPCDS Element Mapping or Implementer Note      |
|-------------------------------------------------------------------------|------------------------------------|:----------:|---------------------------|----------------------------------------|
| The Element name in the target Profile. e.g., Coverage.meta.lastUpdated | S indicates a Must Support Element |   Defines the cardinality of the target element   | The CARIN-BB source element name | The Mapping Element Id from the CARIN-BB CPCDS mapping document and the associated mapping element name [{"163":"Coverage Last Updated Date"}] |

<i>Note: Fields with a cardinality of 1..1 or 1..* are only considered mandatory fields when they are a top-level element in a resource. If they are contained within a parent element that is optional the child element is also optional, unless data for the parent element is provided. </i>

<i>Note: In the CPCDS Element Mapping column the element ["{163]":"...."}] or ["Ref(x,xx,xxx)":"..."] refers to the CPCDS element Id: Element name in the CPCDS tables.</i>

The IG will continue to be tested at connectathons and will continue to utilize commonly adopted standards (e.g., US Core profiles) that have been tested by other groups (e.g., Argonaut). USCDI concepts are encapsulated in US Core Profiles on FHIR Resources. The Code Systems, Value Sets and codings used in this IG are based on US Core Profiles. Regardless of the way in which payers store their administrative and clinical information they will need to map it appropriately to these profiles.

## US Core Profiles

This IG supports the use of multiple US Core versions. The profiles supported by the respective versions are 
linked below:

- [US Core 3.1.1 Profiles and Extensions]({{site.data.fhir.ver.uscore3}}/profiles.html)
- [US Core 6.1.0 Profiles and Extensions]({{site.data.fhir.ver.uscore6}}/profiles-and-extensions.html)


[Next Page - US Core Allergy Intolerance](USCoreAllergyIntolerance.html)
