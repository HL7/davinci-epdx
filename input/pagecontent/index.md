<div class="stu-note">

<b><i>This page has been updated to reflect the release of the CMS Prior Authorization Rule (CMS-0057).</i></b>
</div>



**The Payer Data Exchange (PDex) Implementation Guide (IG) is provided for Payers/Health Plans to enable them to create a Member's Health History using clinical resources (based on US Core Profiles established from FHIR R4) which can be understood by providers and, if they choose to, committed to their Electronic Medical Records (EMR) System.**

The PDex work group has made changes to the original version of the IG following the publication of the final CMS Interoperability and Patient Access Rule (CMS-9115) and the subsequent Advancing Interoperability and Improving Prior Authorization Rule (CMS-0057).

The STU2 version of the IG incorporates changes to support the sharing of Prior Authorization information with members, providers and other payers. This is done through the profiling of the [ExplanationOfBenefit](PDexPriorAuthorization.html) resource. This version of the Implementation guide also introduces two Bulk APIs that enable the data available through the Patient Access API to also be made available to In-Network/Contracted Providers and Other Health Plans through the [Provider Access API](provider-access-api.html) and the [Payer-to-Payer Bulk API](payertopayerbulkexchange.html). 

CMS Guidance defines two sets of data to be made available by payers in the Patient Access API:  Claims and Encounter Data and Clinical data.  They provide links to specific implementations guides for the Patient Access API to provide guidance. Use of these implementation guides is not required but is recommended. If used these guides will provide information payers can employ to meet the requirements of the policies being finalized. 
The [CARIN Consumer Directed Payer Data Exchange IG (CARIN IG for Blue Button®)](http://hl7.org/fhir/us/carin-bb/STU2/) defines how Claims and Encounter Data are to be provided; This Da Vinci Payer Data Exchange IG (PDex) and the [US Core 3.1.1 IG]({{site.data.fhir.ver.uscore3}}) or [US Core 6.1.0 IG]({{site.data.fhir.ver.uscore6}}) define how Clinical Data is to be provided. 

### Background
There are two parallel paths pursued by the CARIN Alliance (**C**reating **A**ccess to **R**eal-time **In**formation) and the Da Vinci Project related to providing health plan data to various stakeholders.  CARIN Alliance approaches the issue primarily from a financial (claims) perspective, with some limited associated clinical data. The Da Vinci Project approaches the issue primarily from a clinical perspective and leaves financial data out of scope.

The CARIN Alliance focused on replicating the CMS Blue Button 2.0 solution directed at providing beneficiaries access to claims information for Medicare Fee For Service (FFS) in the form of a FHIR based ExplanationOfBenefit (EOB). The CARIN Alliance Consumer-Directed Payer Data Exchange (CARIN IG for Blue Button®) solution was intended to provide the same information based on commercial payer databases, at least for Medicare Advantage products. The CMS Interoperability and Patient Access Final Rule expanded the scope of a Blue Button 2.0 equivalent to include not just Medicare Advantage but also Medicaid HMO, CHIP HMO and QHP's in the federal marketplace.

The Da Vinci Payer Data Exchange (PDex) solution started with the goal of providing payer sourced information to providers in the form of FHIR resources consistent with US Core profiles for FHIR Release 4 (R4). The CMS Interoperability Final Rule directs covered payers (as noted above) to make Encounter and Clinical data available to members through an API (defined by the ONC 21st Century Cures Act Final Rule) for, at a minimum, information defined in USCDI release 1.1. Since PDex was already focused on making the same information available through a compliant API, Da Vinci expanded the scope of PDex to include not only payer to provider exchange at the request of the provider but also payer to third party application exchange at the request of the member.

In addition, the CMS Interoperability Final Rule requires a covered plan, at the member’s request, to make their information (as defined by USCDI release 1.1), at a minimum available to any other plan as directed by the member. This ability must exist for up to 5 years after the member leaves the plan. Da Vinci expanded the scope of the PDex Implementation Guide to support this exchange. This aspect of the CMS-9115 Interoperability and Patient Access Rule was never enforced. However, in the following Prior Authorization Rule (CMS-0057) CMS requires Payers to enable Payers to perform a Payer-to-Payer exchange of data for opted-in and matched members that have moved to a new plan from a regulated health plan.
  
At this point we have two solutions that provide an overlapping but different set of information for the members of a health plan. The first is the CARIN IG for Blue Button® which is focused on providing claims information, including the adjudication information, in the form of a FHIR ExplanationOfBenefit (EOB).  The second solution is to provide all payer information related to the clinical condition and care of the patient using US Core profiles on FHIR R4 resources. In the latter case, USCDI information coming from claims is represented as US Core resources and includes, at a minimum: encounters, providers, organizations, locations, dates of service, diagnoses (conditions), procedures and observations. This information would also include clinical information from sources other than claims maintained by the payer, such as:

1. Laboratory results received via HL7 V2 ORU transactions, 
2. Clinical data from HL7 consolidated CDAs, 
3. Information derived from HL7 V2 ADT transactions, 
4. Information received or extracted from immunization registries, 
5. Information related to medication administration from pharmacy benefit managers in pharmacy networks, 
6. FHIR resources, and any other source of clinical information related to the member.
 
Unlike the [US Core 3.1.1 IG]({{site.data.fhir.ver.uscore3}}) or [US Core 6.1.0 IG]({{site.data.fhir.ver.uscore6}}), PDex provides guidance to payers on how to make the following information available via the Patient Access API:

1. Provenance appropriate for payer data exchange (extended US Core Provenance)
2. Dispensed medications (not covered in [US Core 3.1.1]({{site.data.fhir.ver.uscore3}}))
3. Medical devices that are not implantable devices (not covered in US Core)
4. Common Payer Consumer Data Set (CPCDS) to US Core and PDex profiles to satisfy the requirement for exchange of USCDI V1 information
5. Clinical data received by payers (e.g., laboratory results) from multiple sources (e.g., claims, HL7 V2, CDA) to the appropriate FHIR US Core and PDex profile data elements.

<table>
	<tr>
		<td>
			<img width="100%" height="auto" src="Payer-Admin-Financial-Clinical-Data-interchange.png">
		</td>	
	</tr>	
</table>


This IG uses the same Member Health History "payload" for member-authorized exchange of information with other Health Plans, in network providers and with Third-Party Applications. It describes the interaction patterns that, when followed, allow the various parties involved in managing healthcare and payer data to more easily integrate and exchange data securely and effectively.

This IG covers the exchange of:
- Claims-based information via clinical FHIR profiles, namely US Core plus payer-specific profiles for Device and MedicationDispense
- Clinical Information (such as Lab Results, Allergies and Conditions)

In support of the Prior Authorization Rule (CMS-0057) This IG adds support for Prior Authorizations and the supporting clinical information used in reaching a decision. This information iis added to the Patient Access API and is also available to In-Network Providers and other Payers through the Provider Access and Payer-to-Payer Bulk APIs.

This IG covers the exchange of this information using US Core and Da Vinci Health Record Exchange (HRex) Profiles. This superset of clinical profiles forms the Health Plan Member's Health History. 

This IG covers the exchange of a Member's Health History in the following scenarios:
- Provider requested Provider-Health Plan Exchange using CDS-Hooks and SMART-on-FHIR
- Member-authorized Health Plan to Health Plan exchange
- Member-authorized Health Plan to Third-Party Application exchange

The latter two scenarios are provided to meet the requirements identified in the CMS Interoperability Notice for Proposed Rule Making issued on February 11, 2019. To meet the requirements of the CMS Prior Authorization Rule this IG adds two new APIs:

- [Provider Access Bulk API](provider-access-api.html)
- [Payer-to-Payer Bulk API](payertopayerbulkexchange.html)

**There are items in this guide that are subject to update**. This includes:
- Value Sets
- Code Systems
- Examples.

See the [Table of Contents](toc.html) for more information.

### Mapping Adjudicated Claims and Encounter Information to Clinical Resources

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

With the CMS Prior Authorization Rule (CMS-0057) recommending the series of Da Vinci Burden Reduction Implementation Guides (Coverage Requirements Discovery, Documents Templates and Rules and Prior Authorization Support) it is expected that Payers will receive more clinical data from Providers. Much of that data will be in structured form, as defined by the US Core Implementation Guide. The Payer-to-Payer Bulk API also requires the exchange of unstructured data that supports a Prior Authorization decision. Such data would be mebedded in a DocumentReference resource for exchange. This is likely to result in Payers having far more clinical data to exchange wih Members, Providers and other Payers.

The column definitions are provided in the table below. Look for this style of table in the Profiles defined in this IG.

{% include style_insert_table_blue.html %}

| US Core/PDex Element                                                    | MustSupport | Cardinality | CARIN-BB Element          | CPCDS Element Mapping or Implementer Note      |
|-------------------------------------------------------------------------|-------------|:----------:|---------------------------|----------------------------------------|
| The Element name in the target Profile. e.g., Coverage.meta.lastUpdated | S indicates a Must Support Element            |   Defines the cardinality of the target element   | The CARIN-BB source element name | The Mapping Element Id from the CARIN-BB CPCDS mapping document and the associated mapping element name [{"163":"Coverage Last Updated Date"}] |

<i>Note: Fields with a cardinality of 1..1 or 1..* are only considered mandatory fields when they are a top-level element in a resource. If they are contained within a parent element that is optional the child element is also optional, unless data for the parent element is provided. </i>

<i>Note: In the CPCDS Element Mapping column the element ["{163]":"...."}] or ["Ref(x,xx,xxx)":"..."] refers to the CPCDS element Id: Element name in the CPCDS tables.</i>

The IG will continue to be tested at connectathons and will continue to utilize commonly adopted standards (e.g., US Core profiles) that have been tested by other groups (e.g., Argonaut). USCDI concepts are encapsulated in US-Core Profiles on FHIR Resources. The Code Systems, Value Sets and codings used in this IG are based on US-Core Profiles. Regardless of the way in which payers store their administrative and clinical information they will need to map it appropriately to these profiles. 

In addition, we are creating a supplemental guide to provide more examples of how to populate the resources that are being exchanged based on the nature of the source information (e.g., lab results via V2 transactions, CDA, or claims).

### Intellectual Property

This HL7 specification contains and references intellectual property owned by third parties ("Third Party IP").  Implementers and testers of this specification **SHALL** abide by the license requirements for each terminology content artifact utilized within a functioning implementation. Terminology licenses **SHALL** be obtained from the Third-Party IP owner for each code system and/or other specified artifact used.  It is the sole responsibility of each organization deploying or testing this specification to ensure their implementations comply with licensing requirements of each Third-Party IP.

### Conventions

This implementation guide (IG) uses specific terminology to flag statements that have relevance for the evaluation of conformance with the guide:

**SHALL** indicates requirements that must be met to be conformant with the specification.

**SHOULD** indicates behaviors that are strongly recommended (and which may result in interoperability issues or sub-optimal behavior if not adhered to) but which do not, for this version of the specification, affect the determination of specification conformance.

**MAY** describes optional behaviors that are free to consider but where there is no recommendation for, or against, adoption.

#### Must Support

For profiles defined in other IGs, the meaning of Must Support is established in the defining IG. Note that the Must Support requirements for this IG are modeled after the US Core Implementation Guide.

#### Patient/Subject Terminology

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
    * Subject of Care.

### Change History

A history of changes made since the publication of the STU1 version of the PDex IG is maintained in [ChangeHistory](changehistory.html).

### Credits

See the [Credits](credits.html) page for a list of contributors to the creation and maintenance of this Implementation Guide.

### FHIR Publisher

This IG was built with Sushi and the FHIR Publisher (v1.6.5 or greater).

[Next Page: Implementation Guide](ImplementationGuide-hl7.fhir.us.davinci-pdex.html)
