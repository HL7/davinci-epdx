---
title: Implementation Guide HomePage
layout: default
active: home
---

{% include publish-box.html %}

<!-- { :.no_toc } -->

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

* Do not remove this line (it will not be displayed)
{:toc}

<!-- end TOC -->

### Description

This specification is currently undergoing ballot and connectathon testing. It is expected to evolve, possibly significantly, as part of that process.
Feedback is welcome and may be submitted through the FHIR gForge tracker indicating US Da Vinci PDex as the specification. If balloting on this IG, please submit your comments via the tracker and just reference them in your ballot submission implementation guide.

[Financial Management](https://confluence.hl7.org/display/FM/Financial+Management+Home) is the Sponsoring Work Group for this Implementation Guide.

**The Payer Data Exchange (PDex) Implementation Guide (IG) is provided for Payers/Health Plans to enable them to create a Member's Health History using clinical resources (based on US Core Profiles based on FHIR R4) which can be understood by providers and, if they choose to, committed to their Electronic Medical Records (EMR) System.**

This IG uses the same Member Health History "payload" for member-authorized exchange of information with other Health Plans and with Third-Party Applications. It describes the interaction patters that, when followed, allow the various parties involved in managing healthcare and payer data to more easily integrate and exchange data securely and effectively.

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

#### Latest Changes
- (255) Adding Previous / Next Page Links to narrative thru section 3
- (254) Add CDS Hooks Justification, revisions per review comments. 
- (245) Add section 4-8 sub-content links
- (243) Add FM as sponsoring workgroup to description
- (241) Section 3 sub-content link
- (238) Section 3 content links
- (235) Section 2 content links
- (234) Updating Capability Statement Page
- (228) Add MedicationDispense
- (221) Fix relative links
- (207) Data mapping updates.
- (204) Image updates. Minor changes through 3-5.
- (200) Added to section 7. Updated OAuth2.0 Member-authorized exchange diagram



### Authors

<table>
<thead>
<tr>
<th>Name</th>
<th>Email</th>
</tr>
</thead>
<tbody>
<tr>
<td>Mark Scrimshire (mark@ekivemark.com)</td>
<td></td>
</tr>
</tbody>
</table>


