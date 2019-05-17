---
title: 3-6-7 US Core Procedure
layout: default
active: 3-6-7 US Core Procedure
---

An example mapping of Health Plan data for Members to the [US Core Procedure profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-procedure.html) is shown below:

| Line | PayerSourceRecord | CMS BB 2.0 Field | Data Descriptor     | FHIR Profile      | Profile Field                     | ValueSet | Notes              |
|------|-------------------|------------------|---------------------|-------------------|-----------------------------------|----------|--------------------|
| 1.4  | Member            | BENE_ID          | Patientid           | US Core Procedure | .subject                          |          | Reference(Patient) |
| 1.1  | Claim-Line        |                  | Service (from) date | US Core Procedure | .occurence.occurrencePeriod.start |          |                    |
| 1.1  | Procedure         |                  | Procedure code      | US Core Procedure | .code                             |          |                    |
| 2.1  | Procedure         |                  | Procedure date      | US Core Procedure | .performed.dateTime               |          |                    |
| 3.1  | Procedure         |                  | Procedure code type | US Core Procedure | .category                         |          |                    |
| 4.1  | Procedure         |                  | Procedure type      | US Core Procedure | .code.coding.system               |          |                    |
| 5.1  | Procedure         |                  | Modifier Code -1    | US Core Procedure | .modifierExtension                |          |                    |
| 6.1  | Procedure         |                  | Modifier Code -2    | US Core Procedure | .modifierExtension                |          |                    |
| 7.1  | Procedure         |                  | Modifier Code -3    | US Core Procedure | .modifierExtension                |          |                    |
| 8.1  | Procedure         |                  | Modifier Code -4    | US Core Procedure | .modifierExtension                |          |                    |

Where an entry is provided in the CMS BB2.0 FIELD column the definition of the field can be reviewed using the following URL:

https://bluebutton.cms.gov/resources/variables/{CMS_BB2.0_FIELD}/

Where {CMS_BB2.0_FIELD} is replaced with the Field value in lower case. For example:

https://bluebutton.cms.gov/resources/variables/bene_id/
https://bluebutton.cms.gov/resources/variables/dob_dt/

#### 3-6-7-1 Example Procedure Resource

An example mapping of an Procedure resource is shown here:

<pre>
TODO: Add Procedure Resource in JSON format
</pre>

Refer to the US Core Additional examples of the [US Core R4 Implementation Guide](https://build.fhir.org/ig/HL7/US-Core-R4/) for further examples of completed [US Core Procedure Profiles ](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-procedure.html).



