---
title: Support for FHIR R4
layout: default
active: Support for FHIR R4
---

The hooks published in the CDS Hooks specification provide a list of context resources for the DSTU2 and STU3 versions of FHIR. The CDS Hook specification won't be updated to include R4 resources until after R4 is finalized. Because this implementation guide is being written to support FHIR R4 as well as STU3 and Argonaut (DSTU2), it provides guidance on what R4 resources are relevant for each hook (both pre-existing hooks as well as newly proposed hooks).

It is possible that the actual list of R4 resources provided for the hooks will differ from that proposed in this IG. Future versions of the implementation guide will adjust accordingly.

The CDS Hooks payload received from an EMR can include DSTU2, STU3 or R4 resources. The Payer's CDS Hooks service **SHALL** handle the content in the JSON hooks payload, regardless of version of FHIR used for incorporated resources.

The health plan's CDS Hooks service **SHALL** provide access to FHIR R4 resources based on Profiles identified in the US Core and Da Vinci HRex IGs.

The SMART-on-FHIR App that **MAY** be called from the returned CDS Hooks card will not translate R4 profiles to earlier versions of FHIR. When interacting with EMR systems that support FHIR versions prior to FHIR R4 the SMART App **SHALL** create a DocumentReference and encapsulate a PDF, human readable version of the records being committed, together with a document bundle that encapsulates the FHIR resources from the health plan that the provider has selected to commit to the patient's record.

