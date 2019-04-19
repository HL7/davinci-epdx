---
title: Interaction Methods
layout: default
active: Interaction Methods
---

The PDex IG specifies two interaction methods. Their use depends upon the Actors involved and the Data Payloads being exchanged.

The two interaction methods are:
1. CDS Hooks with SMART on FHIR
2. OAuth 2.0 and FHIR API

### 1. CDS Hooks with SMART on FHIR

Clinical systems will use the specification and workflows defined by [CDS Hooks](https://cds-hooks.hl7.org/) to initiate Coverage Requirements Discovery with the payers. Implementers must be familiar with all aspects of this specification.

SMART on FHIR is expected to be used in conjunction with CDS Hooks in two principle ways:

#### Ad-hoc PDex Member History Request

CDS Hooks provides a mechanism for providers/clinicians to request a medical history for their patient from the Health Plan as part of their regular workflow - when scheduling an appointment. However, sometimes clinicians may be interested updating the patient's medical history without going through the appointment booking steps within their EMR. I.e. They dont want to actually create an appointment, they just want to ask the question Has anything new happened to my patient at some other location?"

Sometimes clinicians want to check and update a patient's history, for example during a patient review, or responding to a question from a patient. The solution to this need it the use of a SMART on FHIR app that will invoke a CDS Hook. This is possible because many EMR systems provide support for SMART on FHIR. This use of SMART is distinct from the use of SMART in CDS Hooks. This isn't launching a SMART app based upon the contents of a returned card. Instead it is using SMART to invoke a CDS Hook in place of the EMR. It is emulating the workflow trigger that would normally trigger a hook within an EMR workflow.

The SMART on FHIR CDS Hook trigger approach was pioneered by the [Da Vinci Coverage Requirements Discovery IG](http://hl7.org/fhir/us/davinci%2Dcrd/2019May/) (CRD-IG). Developers interested in using this approach should refer to the CDS Hooks and SMART on FHIR sections of that IG for the latest guidance, exaamples and links to code samples. 

The PDex IG uses a similar approach to enable a CDS Hook. The CDS Hook used by PDex is:

- Appointment-book

 
#### Hook Actions

When a Health Plan server response to a CDS Hook, one of the possible actions is to allow the user to [invoke a SMART App](https://cds-hooks.org/specification/1.0/#link). Support for this option by Health Plan systems **SHOULD** be provided. The SMART on FHIR app provided as a link from the returned CDS Hook **SHOULD** enable a clinician to review the available Health Plan's data for their patient, select the data they want to commit to their EMR system and upon confirming their selection, enable the selected data to be written to the clinician's EMR system.

The [Da Vinci Documentation Templates and Rules Implementation Guide](http://www.hl7.org/fhir/us/davinci-dtr) (DTR-IG) provides additional guidance and expectations on the use of CDS Hook cards to launch SMART Apps and how payer-provided SMART Apps should function. 

### 2. OAuth2.0 and FHIR API

The well defined mechanism for enabling Member/Patient authorization to share information with an application using the FHIR API is to use OAuth2.0 as the Authorization protocol. The member **SHALL** authenticate using credentials they have been issued with by the Health Plan. This is typically the member's customer portal credentials.

After authenticating the Member **SHALL** be presented with an Authorization screen that enables them to approve the sharing of information with the Third Party, or new Health Plan, Application that has client application credentials registered with the Health Plan.

The Authorization screen **MAY** provide options to allow the Member to limit the information that is shared with the application. For example, this **MAY** enable the Member to withhold their demographic or behavioral health information. 

After successfully authorizing an application an Access Token and Optional Refresh Token **SHALL** be returned to the requesting application. 

The requesting application **SHALL** use the access token to access the Health Plan's secure FHIR API to download the information that the Member is allowed to access. 