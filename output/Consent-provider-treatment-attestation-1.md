# Provider Treatment Attestation Consent Example for Bulk Member Match - Da Vinci Payer Data Exchange v2.2.0

* [**Table of Contents**](toc.md)
* [**FHIR Artifacts**](artifacts.md)
* **Provider Treatment Attestation Consent Example for Bulk Member Match**

## Example Consent: Provider Treatment Attestation Consent Example for Bulk Member Match

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [Provider Attestation to Treatment Relationship](StructureDefinition-provider-treatment-relationship-consent.md)

## Participants

* **Role**: Patient
  * **Details**: [Johnny Appleseed Male, DoB: 1986-01-01 ( Member Number)](Patient-1.md)
* **Role**: Party
  * **Details**: [Dr. Susan Smith](Practitioner-4.md)
* **Role**: Manager
  * **Details**: [Provider 1](Organization-ProviderOrg1.md)

This consent is made under the policy [https://example.org/provider-attestation-policy](https://example.org/provider-attestation-policy) .

* [Rule](https://hl7.org/fhir/R4/formats.html#table): permit
  * [Time Period](https://hl7.org/fhir/R4/formats.html#table): 
  * [Who](https://hl7.org/fhir/R4/formats.html#table): 
  * [What](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [Rule](https://hl7.org/fhir/R4/formats.html#table): permit
  * [Time Period](https://hl7.org/fhir/R4/formats.html#table): * Period: 2024-01-15 --> (ongoing)

  * [Who](https://hl7.org/fhir/R4/formats.html#table): * information recipient: [Dr. Susan Smith](Practitioner-4.md)
* healthcare provider: [Provider 1](Organization-ProviderOrg1.md)

  * [What](https://hl7.org/fhir/R4/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): * Purpose: [ActReason: TREAT](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActReason.html#v3-ActReason-TREAT) (treatment)
* Purpose: [ActReason: HPAYMT](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActReason.html#v3-ActReason-HPAYMT) (healthcare payment)
* Purpose: [ActReason: HOPERAT](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActReason.html#v3-ActReason-HOPERAT) (healthcare operations)

* [Rule](https://hl7.org/fhir/R4/formats.html#table): ![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC) Documentation for this format



## Resource Content

```json
{
  "resourceType" : "Consent",
  "id" : "provider-treatment-attestation-1",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/provider-treatment-relationship-consent"]
  },
  "status" : "active",
  "scope" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
      "code" : "treatment"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "IDSCL",
      "display" : "Information Disclosure"
    }]
  },
  {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "64292-6",
      "display" : "Release of information consent"
    }]
  }],
  "patient" : {
    "reference" : "Patient/1"
  },
  "dateTime" : "2024-11-14T10:30:00Z",
  "performer" : [{
    "reference" : "Practitioner/4",
    "display" : "Dr. Susan Smith"
  }],
  "organization" : [{
    "reference" : "Organization/ProviderOrg1",
    "display" : "Provider 1"
  }],
  "sourceReference" : {
    "reference" : "DocumentReference/provider-attestation-doc-1",
    "display" : "Provider Attestation Form"
  },
  "policy" : [{
    "authority" : "https://example.org/health-authority",
    "uri" : "https://example.org/provider-attestation-policy"
  }],
  "verification" : [{
    "verified" : true,
    "verifiedWith" : {
      "reference" : "Patient/1",
      "display" : "Patricia Ann Person"
    },
    "verificationDate" : "2024-11-14T10:30:00Z"
  }],
  "provision" : {
    "type" : "permit",
    "period" : {
      "start" : "2024-01-15"
    },
    "actor" : [{
      "role" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
          "code" : "IRCP",
          "display" : "information recipient"
        }]
      },
      "reference" : {
        "reference" : "Practitioner/4",
        "display" : "Dr. Susan Smith"
      }
    },
    {
      "role" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
          "code" : "PROV",
          "display" : "healthcare provider"
        }]
      },
      "reference" : {
        "reference" : "Organization/ProviderOrg1",
        "display" : "Provider 1"
      }
    }],
    "purpose" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "TREAT",
      "display" : "treatment"
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HPAYMT",
      "display" : "healthcare payment"
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HOPERAT",
      "display" : "healthcare operations"
    }]
  }
}

```
