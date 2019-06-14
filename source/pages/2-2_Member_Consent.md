---
title: 2-2 Member Consent
layout: default
active: 2-2 Member Consent
---

[Previous Page](2-1_Implementation_Guide_Scope.html)

<ul id="markdown-toc">
	Section Guide:
  <li><a href="./2_Introduction.html" id="markdown-toc-introduction">Introduction</a></li>
  <li><a href="./2-1_Implementation_Guide_Scope.html" id="markdown-toc-scope">- Implementation Guide Scope</a></li>
  <li><a href="./2-2_Member_Consent.html" id="markdown-toc-consent">- Member Consent</a></li>
	<li><a href="./2-3_FHIR.html" id="markdown-toc-fhir">- FHIR</a></li>
	<li><a href="./2-4_Supporting_Specifications.html" id="markdown-toc-supportingspecifications">- Supporting Specifications</a></li>
	<li><a href="./2-5_Implementation_Assumptions.html" id="markdown-toc-assumptions">- Implementation Assumptions</a></li>
	<li><a href="./2-6_Implementation_Hierarchy_and_Priorities.html" id="markdown-toc-hierarchy">- Implementation Hierarchy and Priorities</a></li>
	<li><a href="./2-7_PDex_Data_Payloads.html" id="markdown-toc-payloads">- PDex Data Payloads</a></li>
</ul>

Member/Patient Consent for scenarios covered in this Implementation Guide fall into two areas:

1. Provider-Health Plan Exchange
2. Member-mediated Information Exchange

### 2-2-1 Provider-Health Plan Exchange

Provider-Health Plan exchange of data is covered by the Health Insurance Portability and Accountability Act (HIPAA) under the [Treatment Payment and Health Care Operations](https://www.hhs.gov/hipaa/for-professionals/privacy/guidance/disclosures-treatment-payment-health-care-operations/index.html) provision.

### 2-2-2 Member-mediated Information Exchange

The CMS Notice For Proposed Rule Making for Patient access and Interoperability requires that a subscriber to a new health plan **SHALL** be able to request their information to be passed from their old health plan to their new health plan.

A Member **SHALL** also be able to use APIs to share information with Third Party Applications. This includes:

- Their health history
- Healthcare network/directory information
- Pharmacy network/directory information
- Prescription Drug Formulary information

The Member-mediated Information Exchange method will build upon established OAuth2.0 protocols for patient access to their health and claims information that enables the sharing of information with third-party applications. The health history payload for the exchange would be the same FHIR resources that are passed to providers under the Provider-Payer exchange scenario.

The exchange of Healthcare network/directory information and Pharmacy network/directory information is covered in the [PDex-plan-net IG](http://build.fhir.org/ig/HL7/davinci-pdex-plan-net/).
The exchange of Prescription drug formulary information is covered in the [PDex-formulary IG](http://build.fhir.org/ig/HL7/davinci-pdex-formulary/).

The OAuth2.0-based exchange is covered in detail in [Section 7]()




[Next Page](2-3_FHIR.html)