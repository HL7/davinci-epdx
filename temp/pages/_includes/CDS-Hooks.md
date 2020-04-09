[Previous Page - Provider-controlled Information Requests and Filtering](Provider-controlledInformationRequestsandFiltering.html)


This section of the implementation guide defines the specific conformance requirements for systems wishing to conform to this Payer Data Exchange (PDex) Implementation Guide. The bulk of it focuses on the implementation of the CDS Hooks Specification to meet PDex use-cases. It also describes the use of SMART on FHIR and provides guidance on privacy, security and other implementation requirements.

This IG uses a combination of CDS-Hooks and SMART-on-FHIR to enable Providers to issue a query to a Health Plan and to retrieve information about their patient (the Health Plan member) that they **MAY** review and choose to commit to the patient record in their EMR.

CDS Hooks enables the Health Plan to be queried either via an on-demand transaction triggered from a SMRT-on-FHIR app, or from a workflow event in the EMR that triggers the hook, such as when an apppointment is booked for a patient.

The bulk of the functionality of this specification is implemented using CDS Hooks. The [Hooks specification]( https://cds-hooks.hl7.org/) is small. Implementers should read and be familiar with all of it.

CDS Hooks is a relatively new technology. It is considered a Standard for Trial Use, meaning that it will continue to evolve based on implementer feedback and may change in ways that are not compatible with the current draft. As well, the initial version of the specification has focused on the core architecture and a relatively simple set of capabilities. Additional capabilities will be introduced in future versions.

To meet requirements identified by Da Vinci project participants, it is necessary to introduce some additional capabilities above and beyond what is currently found in the CDS Hooks specification. This section of the PDex implementation guide describes those additional capabilities and the mechanism the implementation guide proposes to implement them. The purpose of these customizations is to enable testing at connectathons and to support feedback into the CDS Hooks design process.

When interacting with EMR systems that support FHIR R4 the SMART App **SHALL** evaluate the EMR System's CapabilityStatement that the implementation has determined relevant to this SMART-on-FHIR application to determine which of the records selected by the Provider can be written to the EMR via the FHIR API.

Where the EMR's FHIR API does not enable the SMART App to write a resource via the API the SMART App **SHOULD** write the records that it is permitted to write to the API. The remaining selected records **SHOULD** be retained in the EMR in the most appropriate form to allow the provider access to the information when needed.
Each capability listed here has been proposed to the CDS Hooks community and may well become part of the official specification, either in the initial release, or in some future release. However, there is a significant likelihood that the manner in which the requirements are met may vary somewhat from a syntax or even an architectural approach. Future versions of this implementation guide will be updated to align with how these requirements are addressed in future versions of the CDS Hook specification. This implementation guide will not be able to be Normative (locked into backward compatibility mode) until the underlying CDS Hooks content is also normative.

This implementation guide extends/customizes CDS Hooks in 4 ways: 
* Support for FHIR R4 
* Extending the appointment-book hook
* A hook configuration mechanism
* additional response capabilities. 

Each are described in the following sections.



[Next Page - Support for FHIR R4](SupportforFHIRR4.html)