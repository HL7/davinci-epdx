[Previous Page - CDS-Hooks](CDS-Hooks.html)


The hooks published in the CDS Hooks specification provide a list of context resources for the DSTU2 and STU3 versions of FHIR. The CDS Hook specification won't be updated to include R4 resources until after R4 is finalized. Because this implementation guide is being written to support FHIR R4 as well as STU3 and Argonaut (DSTU2), it provides guidance on what R4 resources are relevant for each hook (both pre-existing hooks as well as newly proposed hooks).

It is possible that the actual list of R4 resources provided for the hooks will differ from that proposed in this IG. Future versions of the implementation guide will adjust accordingly.

The CDS Hooks payload received from an EMR can include DSTU2, STU3 or R4 resources. The Payer's CDS Hooks service **SHALL** handle the content in the JSON hooks payload, regardless of version of FHIR used for incorporated resources.

The health plan's CDS Hooks service **SHALL** provide access to FHIR R4 resources based on Profiles identified in the US Core, Da Vinci PDex and HRex IGs.

The SMART-on-FHIR App that **MAY** be called from the returned CDS Hooks card will not translate R4 profiles to earlier versions of FHIR. 

When interacting with EMR systems that support FHIR R4 the SMART App **SHALL** evaluate the EMR System's CapabilityStatement to determine which of the records selected by the Provider can be written to the EMR via the FHIR API. Where the EMR's FHIR API does not enable the SMART App to write a resource via the API the SMART App shall write the records that it is permitted to write to the API. The remaining selected records **SHALL** be compiled into a FHIR bundle, a PDF **SHALL** be created to provide a human-readable version of the bundle and both documents **SHALL** be attached as a DocumentReference and commited to the patient's record. 

Where an EMR providing an R4 API prevents the attaching of a FHIR bundle to a DocumentReference the SMART APP **SHALL** attempt to write the selected records based upon the options listed below for graceful write degradation.

### Graceful write degradation

When interacting with EMR systems that support FHIR versions prior to FHIR R4 the SMART App **SHALL** , where permitted by the target EMR, create a DocumentReference and encapsulate a PDF, human readable version of the records being committed, together with a document bundle that encapsulates the FHIR resources from the health plan that the provider has selected to commit to the patient's record.

Where the EMR does not support the attachment of FHIR Bundles to a DocumentReference record the SMART App **SHALL** create a human readable PDF version of the selected resources and attach this document to the DocumentReference and commit to the patient's record.

Where the EMR does not support the attachment of PDF Documents to a DocumentRefernece record the SMART App **SHALL** create an HTML or XHTML document that contains the selected resources and attach this document to the DocumentReference and commit to the patient's record.

Where the EMR does not support the attachment of HTML/XHTML documents to a DocumentRefernece record the SMART App **SHALL** create a human readable ASCII text version of the selected resources and attach this to the DocumentReference and commit to the patient's record.

To summarize this graceful degradation in functionality the priority for writing information to a target EMR should be:

1. Write to information to the respective target resources
2. Where data can't be written to target resources then create a Document Reference that comprises a FHIR bundle and a human readable PDF of the records being committed.
3. Where the DocumentReference resource does not support committing a FHIR bundle store the PDF document.
4. Where the DocumentReference does not support writing a PDF store an HTML or XHTML version.
5. Where the DocumentReference does not support HTML or XHTML content write an ASCII text version.




[Next Page - Additional or Modified Hooks](AdditionalorModifiedHooks.html)