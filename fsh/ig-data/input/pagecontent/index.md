<p id="publish-box">
This is a pre-release version (Ballot 1) of Payer Data exchange  (PDex) R1/STU. There is no current official version.
</p>

This specification is currently undergoing ballot and connectathon testing. It is expected to evolve, possibly significantly, as part of that process.
Feedback is welcome and may be submitted through the FHIR JIRA tracker indicating US Da Vinci PDex as the specification. If balloting on this IG, please submit your comments via the tracker and just reference them in your ballot submission implementation guide.

This guide can be reviewed offline. Go to the Downloads section. Click on the link to download the full Implementation Guide as a zip file. Expand the zip file and use a web browser to launch the index.html file in the directory created by the zip extract process. External hyperlinks in the guide will not be available unless you have an active internet connection. 

[Financial Management](https://confluence.hl7.org/display/FM/Financial+Management+Home) is the Sponsoring Work Group for this Implementation Guide.

**The Payer Data Exchange (PDex) Implementation Guide (IG) is provided for Payers/Health Plans to enable them to create a Member's Health History using clinical resources (based on US Core Profiles based on FHIR R4) which can be understood by providers and, if they choose to, committed to their Electronic Medical Records (EMR) System.**

The PDex work group has made changes to the original version of the IG following the publication of the final CMS Interoperability and Patient Access Rule.

This IG uses the same Member Health History "payload" for member-authorized exchange of information with other Health Plans and with Third-Party Applications. It describes the interaction patterns that, when followed, allow the various parties involved in managing healthcare and payer data to more easily integrate and exchange data securely and effectively.

This IG covers the exchange of:
- Claims-based information
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

### Latest Changes
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

# Intellectual Property

This HL7 specification contains and references intellectual property owned by third parties ("Third Party IP").  Implementers and testers of this specification **SHALL** abide by the license requirements for each terminology content artifact utilized within a functioning implementation. Terminology licenses **SHALL** be obtained from the Third Party IP owner for each code system and/or other specified artifact used.  It is the sole responsibility of each organization deploying or testing this specification to ensure their implementations comply with licensing requirements of each Third Party IP.

# Conventions

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
