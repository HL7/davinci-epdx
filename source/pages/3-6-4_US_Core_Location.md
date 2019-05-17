---
title: 3-6-4 US Core Location
layout: default
active: 3-6-4 US Core Location
---

An example mapping of Health Plan data for Members to the [US Core Encounter profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-encounter.html) is shown below:

| Line | PayerSourceRecord | CMS BB 2.0 Field | Data Descriptor               | FHIR Profile     | Profile Field     | ValueSet                                                         | Notes |
|------|-------------------|------------------|-------------------------------|------------------|-------------------|------------------------------------------------------------------|-------|
| 15.1 | Claim             |                  | Claim bill facility type code | US Core Location | .type             | http://build.fhir.org/v3/ServiceDeliveryLocationRoleType/vs.html |       |
| 5.1  | Claim-Provider    |                  | Claim site of service NPI     | US Core Location | .identifier.value |                                                                  |       |
| 16.1 | Claim-Provider    |                  | Claim service location NPI    | US Core Location | .identifier.value |                                                                  |       |
| 7.1  | Claim-Pharmacy    |                  | Pharmacy service type code    | US Core Location | .type             |                                                                  |       |

Where an entry is provided in the CMS BB2.0 FIELD column the definition of the field can be reviewed using the following URL:

https://bluebutton.cms.gov/resources/variables/{CMS_BB2.0_FIELD}/

Where {CMS_BB2.0_FIELD} is replaced with the Field value in lower case. For example:

https://bluebutton.cms.gov/resources/variables/bene_id/
https://bluebutton.cms.gov/resources/variables/dob_dt/

#### 3-6-4-1 Example Location Resource

An example mapping of a Location resource is shown here:

<pre>
TODO: Add Location Resource in JSON format
</pre>

Refer to the US Core Additional examples of the [US Core R4 Implementation Guide](https://build.fhir.org/ig/HL7/US-Core-R4/) for further examples of completed [US Core Location Profiles ](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-location.html).



