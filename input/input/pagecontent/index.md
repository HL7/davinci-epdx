<!-- index.md {% comment %}
*****************************************************************************************
*                            WARNING: DO NOT EDIT THIS FILE                             *
*                                                                                       *
* This file is generated by SUSHI. Any edits you make to this file will be overwritten. *
*                                                                                       *
* To change the contents of this file, edit the original source file at:                *
* ig-data/input/pagecontent/index.md                                                    *
*****************************************************************************************
{% endcomment %} -->
<p id="publish-box">
This is a pre-release version (Ballot 1) of Payer Data exchange  (PDex) R1/STU. There is no current official version.
</p>

This specification is currently undergoing ballot and connectathon testing. It is expected to evolve, possibly significantly, as part of that process.
Feedback is welcome and may be submitted through the FHIR JIRA tracker indicating US Da Vinci PDex as the specification. If balloting on this IG, please submit your comments via the tracker and just reference them in your ballot submission implementation guide.

This guide can be reviewed offline. Go to the Downloads section. Click on the link to download the full Implementation Guide as a zip file. Expand the zip file and use a web browser to launch the index.html file in the directory created by the zip extract process. External hyperlinks in the guide will not be available unless you have an active internet connection. 

[Financial Management](https://confluence.hl7.org/display/FM/Financial+Management+Home) is the Sponsoring Work Group for this Implementation Guide.

**The Payer Data Exchange (PDex) Implementation Guide (IG) is provided for Payers/Health Plans to enable them to create a Member's Health History using clinical resources (based on US Core Profiles based on FHIR R4) which can be understood by providers and, if they choose to, committed to their Electronic Medical Records (EMR) System.**

The PDex work group has made changes to the original version of the IG following the publication of the final CMS Interoperability and Patient Access Rule.

CMS Guidance defines two sets of data be made available by payers in the Patient Access API:  Claims and Encounter Data and Clinical data.  They provide links to specific implementations guides for the Patient Access API to provide guidance. Use of these implementation guides is not required, but if used these guides will provide information payers can use to meet the requirements of the policies being finalized. 
This IG defines how Claims and Encounter Data are to be provided; the DaVinci payer data exchange (PDex) and US Core IGs define how Clinical Data is to be provided. 

### Background
There are two parallel paths pursued by the CARIN Alliance and the Da Vinci Project related to providing health plan data to various stakeholders.  CARIN Alliance approaches the issue primarily from a financial (claims) perspective, with some limited associated clinical data. Da Vinci Project approaches the issue primarily from a clinical perspective and leaves most financial data out of scope.

The CARIN Alliance focused on replicating the CMS Blue Button 2.0 solution directed at providing beneficiaries access to claims information for Medicare Fee For Service (FFS) in the form of a FHIR based ExplanationOfBenefits (EOB). The CARIN Alliance Consumer-Directed Payer Data Exchange (CARIN IG for Blue Button®) solution was intended to provide the same information based on commercial payer databases, at a least for Medicare Advantage products. The CMS Interoperability and Patient Access Final Rule expanded the scope of a Blue Button 2.0 equivalent to include not just Medicare Advantage but also Medicaid HMO, CHIP HMO and QHP's in the federal marketplace.

The Da Vinci Payer Data Exchange (PDex) solution started with the goal of providing payer sourced information to providers in the form of FHIR resources consistent with US Core profiles for FHIR Release 4 (R4). The CMS Interoperability Final Rule directs covered payers (as noted above) to make encounter information and clinical data available to members through an API defined by the ONC 21st Century Cures Act Final Rule for, at a minimum, information defined in USCDI release 1.1. Since PDex was already focused on making the same information available through a compliant API, Da Vinci expanded the scope of PDex to include not only payer to provider exchange at the request of the provider but also payer to third party application exchange at the request of the member.

In addition, the CMS Interoperability Final Rule requires a covered plan, at the member’s request, to make their information (as defined by USCDI release 1.1, at a minimum) available to any other plan as directed by the member. This ability must exist for up to 5 years after the member leaves the plan. Da Vinci expanded the scope of the PDex Implementation Guide to support this exchange.
  
At this point we have two solutions that provide an overlapping but different set of information for the members of a health plan. The first is the CARIN IG for Blue Button® which is focused on providing claims information, including the adjudication information, in the form of a FHIR EOB.  The second solution is to provide all payer information related to the clinical condition and care of the patient using US Core profiles on FHIR R4 resources. In the latter case, information coming from claims is represented as USCDI V1.1 information and includes, at a minimum: encounters, providers, organizations, locations, dates of service, diagnoses (conditions), procedures and observations. This information would also include clinical information from sources other than claims maintained by the payer, such as:

1)	laboratory results received via HL7 V2 ORU transactions, 
2)	clinical data from HL7 consolidated CDAs, 
3)	information derived from HL7 V2 ADT transactions, 
4)	information received or extracted from immunization registries, 
5)	information related to medication administration from pharmacy benefit managers in pharmacy networks, 
6)	FHIR resources, and any other source of clinical information related to the member.
 
Unlike the US Core 3.1.0 Implementation Guide, PDex provides guidance to payers on how to make the following information available via the Patient Access API:

1)	provenance appropriate for payer data exchange (USCDI/US Core profiles are not sufficient)
2)	dispensed medications (not covered in US Core)
3)	medical devices that are not implantable devices (not covered in US Core)
4)	CPCDS data set to US Core and PDex profiles to satisfy the requirement for exchange of USCDI V1.1 information
5)	clinical data received by payers (e.g. laboratory results) from multiple sources (e.g. claims, HL7 V2, CDA) to the appropriate FHIR US Core and PDex profile data elements

<table>
	<tr>
		<td>
			<img  width="100%" height="auto" src="DataViewAdminFinancialClinicalInterop.png">
		</td>	
	</tr>	
</table>


This IG uses the same Member Health History "payload" for member-authorized exchange of information with other Health Plans and with Third-Party Applications. It describes the interaction patterns that, when followed, allow the various parties involved in managing healthcare and payer data to more easily integrate and exchange data securely and effectively.

This IG covers the exchange of:
- Claims-based information via clinical FHIR profiles, namely US Core plus payer-specific profiles for Device and MedicationDispense.
- Clinical Information (such as Lab Results, Allergies and Conditions)

This IG covers the exchange of this information using US Core and Da Vinci Health Record Exchange (HRex) Profiles. This superset of clinical profiles forms the Health Plan Member's Health History. 

This IG covers the exchange of a Member's Health History in the following scenarios:
- Provider requested Provider-Health Plan Exchange using CDS-Hooks and SMART-on-FHIR
- Member-authorized Health Plan to Health Plan exchange
- Member-authorized Health Plan to Third-Party Application exchange

The latter two scenarios are provided to meet the requirements identified in the CMS Interoperability Notice for Proposed Rule Making issued on February 11, 2019.

**There are items in this guide that are subject to update**. This includes:
- Value Sets
- Vocabularies (X12, NUBC etc.)
- Examples

**The Vocabulary, Value Sets and codings used to express data in this IG are subject to review and will be reconciled with**  [X12](http://www.x12.org).

See the [Table of Contents](toc.html) for more information.

### Mapping Adjudicated Claims information to Clinical Resources

A table providing a mapping from the [Consumer-Directed Payer Data Exchange IG](http://hl7.org/fhir/us/carin-bb/) to fields in the respective clinical (US Core and PDex profiles) are provided in the narrative pages for the following profiles:
- [US Core CareTeam](USCoreCareTeam.html) 
- [US Core Condition](USCoreCondition.html)
- [US Core Encounter](USCoreEncounter.html) 
- [US Core Patient](USCorePatient.html) 
- [US Core Procedure](USCoreProcedure.html) 
- [HRex Coverage](Coverage.html) 
- [PDex MedicationDispense](PDexMedicationDispense.html)

Tables are provided to assist implementers in mapping adjudicated claims data extracted for use in the Consumer-Directed Payer Data Exchange IG to clinical resources that may be exchanged as part of workflows identified in this Da Vinci Payer Data Exchange IG. The tables identify the source profile element and the associated Common Pacyer Consumer Data Set (CPCDS) mapping.

The column definitions are provided in the table below. Look for this style of table in the Profiles defined in this IG.

{% include style_insert_table_blue.html %}

| US Core Element           | MustSupport | Cardinality | CARIN-BB Element          | CPCDS Element Mapping                  |
|---------------------------|-------------|:----------:|---------------------------|----------------------------------------|
| The Element name in the target Profile. e.g. Coverage.meta.lastUpdated | S indicates a Must Support Element            |   Defines the cardinality of the target element   | The CARIN-BB source element name | The Mapping Element Id from the CARIN-BB CPCDS mapping document and the associated mapping element name [{"163":"Coverage Last Updated Date"}] |

<i>Note: Fields with a cardinality of 1..1 or 1..* are only considered mandatory fields when they are a top-level element in a resource. If they are contained within a parent element that is optional the child element is also optional, unless data for the parent element is provided. </i>


### Latest Changes
- 0.1.29 Fix spelling error in SourceFormat code description, Fix profile title for pdex-provenance. Change Pdex Provenance to derive from R4 Provenance. Fix menu bar layout.
 FHIR-29594 - Add PDex Server CapabilityStatement, Update FDA National Drug Code ValueSet to match CARIN-BB. 

- 0.1.28 Fix Essential Fields tables for US Core Profiles (v3.1.1): AllergyIntolerance, CarePlan, CareTeam, Condition, DiagnosticReportForLaboratoryResultsReporting, DiagnosticReportForReportNoteExchange, DocumentReference, Encounter, Goal, Immunization, ImplantableDevice, LaboratoryResultObservation, Location, Medication, MedicationRequest, Organization, Patient, PediatricBMIForAge, PediatricHeadOccipitalFrontalCircumference, PediatricWeightForHeight, Practitioner, PractitionerRole, Procedure, Provenance, PulseOximetry,SmokingStatusObservation, VitalSigns.
  Essential Fields table updated for HRex Coverage, Pdex Device, Pdex MedicationDispense, Pdex Provenance.
  Definition of Must Support for Cardinality of 1..1 and 1..* added to Table Definition.
  Fixed Next and Previous Page Links for all Narrative pages.
- 0.1.27 FHIR-28372: Added clarification for NCPDP document types.
  FHIR-29553: Provide guidance when sharing Unstructured Documents using US Core DocumentReference with associated PDex Provenance. Links to the examples were incorporated into the US Core DocumentReference page.
  Shortened pdex-entitysource-provenance structure definition to pdex-provenance. 
- 0.1.26 Added explanation of table structure to Home Page. Added CARIN-BB Element Name to CPCDS mapping tables for US Core Patient, HRex Coverage, PDex MedicationDispense, US Core CareTeam, US Core Condition, US Core Encounter, US Core Procedure.
- 0.1.25 Added Cardinality to CPCDS tables: US Core CareTeam, US Core Condition, US Core Encounter, US Core Procedure, HRex Coverage, PDex MedicationDispense. Update to Payer-to-Payer Exchange with guidance for ingestion options.
- 0.1.24 Updated US Core Patient, Hrex Coverage, US Core CareTeam, US Core Condition, PDex MedicationDispense, US Core Encounter, US Core Procedure to add mapping of CARIN-BB IG CPCDS fields to US Core/PDex Profiles. Fixed DiagnosticReport mapping of CCDA and X12 837 claim elements. 
- 0.1.23 Added in line examples for US Core profiles: Encounter, Goal.
  Made ProvenanceSourceFrom a MustSupport in Pdex-EntitySource-Provenance profile. Fixed US Core examples for Provenance, Pediatric BMI, Pediatric Weight, Pediatric Occipital-frontal circumference, Smoking Status and Vital Signs. Added new page of Laboratory Results Observation. Migrated hrex-coverage to PDEX. Fixed capabilityStatements. Switched to da vinci template.
  
- 0.1.22 Remove pdex-source-provenance. Change provenance examples to use pdex-entitysource-provenance. Update CapabilityStatement to remove pdex-source-provenance.
- 0.1.21 Add Pdex-Device Example. Add Provenance _revinclude use,
reformat tables for improved readability, Added HL7v2, CCDA and Claim(837) mapping tables to US Core DiagnosticReportfor Laboratory Results Reporting.
- 0.1.20 Add PdexServerCapabilityStatement. Add EntitySource and Source Provenance records (pending extension resolution with Security Workgroup), Add dropdown menu to Artifacts menu item. 

- 0.1.19 Create Pdex-Origin-Provenance and Pdex-Target-Provenance to test two variations on reporting payer source format information.
    - Update US core references to 3.1.1 (released August 28, 2020)
- 0.1.18 resolve build errors
- 0.1.17 FHIR-26699 
- 0.3.10: 
   - FHIR-23311, FHIR-28111
   - Fix footer errors
   - Expand pdex-device, based on us-core-implantable-device
   = Fix mailto: broken links in templates

- (118) Consolidate Section 3, Update US Core profile references
- (68-75) Apply Ballot Changes (FHIR-23404, FHIR-23403, FHIR-23397, FHIR-23392, FHIR-23378, FHIR-23375, FHIR-23372, FHIR-23368, FHIR-23366, FHIR-23364, FHIR-23354, FHIR-23348, FHIR-23346, FHIR-23218, FHIR-23400, FHIR-23399, FHIR-23398, FHIR-23390, FHIR-23388, FHIR-23386, FHIR-23382, FHIR-23380, FHIR-23356, FHIR-23334, FHIR-23310, FHIR-233291, FHIR-23285, FHIR-23279, FHIR-22819, FHIR-22821, FHIR-22858, FHIR-22860, FHIR-22861, FHIR-22862, FHIR-22863, FHIR-22865, FHIR-22876, FHIR-22877, FHIR-23139, FHIR-23141, FHIR-23145, FHIR-23191, FHIR-23189, FHIR-23206, FHIR-23208, FHIR-23210, FHIR-23212, FHIR-23224, FHIR-23228, FHIR-23234, FHIR-23236, FHIR-23238, FHIR-23172, FHIR-23193, FHIR-23195, FHIR-23197, FHIR-23199, FHIR-23242, FHIR-23244, FHIR-23246, FHIR-23248, FHIR-23250, FHIR-23252, FHIR-23256, FHIR-23308, FHIR-23384)
- (302) Apply Ballot Changes (FHIR-23254, FHIR-23287, FHIR-23262, FHIR-23266, FHIR-23260, FHIR-23158)
- (300) Apply Ballot Changes (FHIR-23374, FHIR-23302, FHIR-23283, FHIR-23281, FHIR-23277)
- (299) Apply Ballot Changes (FHIR-23151, FHIR-23155)
- (298) Apply Ballot Changes (FHIR-23330, FHIIR-23325, FHIR-23323, FHIR-23322, FHIR-23318, FHIR-23315 )
- (297) Fix Typos (FHIR-23172, FHIR-23170, FHIR-23168, FHIR-23137, FHIR-23135-Wrong IG )
- (295) Fix Typos (FHIR-23230, FHIR-23214, FHIR-23189, FHIR-23187, FHIR-23186, FHIR-23185, FHHIR-23184, FHIR-23182, FHIR-23178, FHIR-23176, FHIR-23174)
- (293) Fix Typos (FHIR-23394, FHIR-23362, FHIR-23328, FHIR-23324, FHIR-23321, FHIR-23317, FHIR-23316, FHIR-23303, FHIR-23274, FHIR-23272, FHIR-23270)
- (292) Apply Ballot Changes (FHIR-23402, FHIR-23413, FHIR-23401, FHIR-23396 )
- (290) Apply Ballot Changes (FHIR-23405 )

The IG will continue to be tested at connectathons and will continue to utilize commonly adopted standards (e.g. US Core profiles) that have been tested by other groups (e.g. Argonaut). USCDI concepts are encapsulated in US-Core Profiles on FHIR Resources. The Vocabulary, Value Sets and codings used in this IG are based on US-Core Profiles. Regardless of the way in which payers store their administrative and clinical information they will need to map it appropriately to these profiles. 

In addition, we are creating a supplemental guide to provide more examples of how to populate the resources that are being exchanged based on the nature of the source information (e.g. lab results via V2 transactions, CDA, or claims).

### Intellectual Property

This HL7 specification contains and references intellectual property owned by third parties ("Third Party IP").  Implementers and testers of this specification **SHALL** abide by the license requirements for each terminology content artifact utilized within a functioning implementation. Terminology licenses **SHALL** be obtained from the Third Party IP owner for each code system and/or other specified artifact used.  It is the sole responsibility of each organization deploying or testing this specification to ensure their implementations comply with licensing requirements of each Third Party IP.

### Conventions

This implementation guide (IG) uses specific terminology to flag statements that have relevance for the evaluation of conformance with the guide:

**SHALL** indicates requirements that must be met to be conformant with the specification.

**SHOULD** indicates behaviors that are strongly recommended (and which may result in interoperability issues or sub-optimal behavior if not adhered to) but which do not, for this version of the specification, affect the determination of specification conformance.

**MAY** describes optional behaviors that are free to consider but where there is no recommendation for, or against, adoption.

It is important to differentiate in the Implementation Guide between identifiers used by the Provider/EMR and those used by the Payer/Health Plan to identify the patient/subject/member.

For the purposes of this IG we will use the following terms:

* **patient** or **subject** id will be used to express the identifier used by the provider to identify a patient/subject.

* **member** id will be used to express the identifier used by the payer/health plan to identify an individual member. Health Plans may historically have referred to these individual members as:

* Member
* Subscriber 
* Beneficiary
* Dependent
* Group Member
* Plan Member
* Covered Party
* Subject of Care


[Next Page: Overview](Overview.html)