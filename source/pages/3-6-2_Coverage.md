---
title: 3-6-2 Coverage
layout: default
active: 3-6-2 Coverage
---

An example mapping of Health Plan data for Members to the [HRex Coverage profile] is shown below:

| Line | Payer Source Record | Payer Source Field | Data Descriptor             | FHIR Profile | Profile Field | ValueSet                                              | Notes                   |
|------|-------------------|--------------------|----------------------------|--------------|---------------|-------------------------------------------------------|-------------------------|
| 1.2  | Member            | BENE_ID            | Patientid                  | Coverage     | .beneficiary  |                                                       | Reference(Patient)      |
| 12.1 | Member            | REL_CD             | relationship to subscriber | Coverage     | .relationship |                                                       |                         |
| 13.1 | Member            |                    | subscriber id              | Coverage     | .subscriberId |                                                       |                         |
| 1.1  | Coverage          |                    | subscriber id              | Coverage     | .subscriberId |                                                       |                         |
| 2.1  | Coverage          |                    | Coverage type              | Coverage     | .class.value  | https://www.hl7.org/fhir/valueset-coverage-class.html | .class.type = "Type"    |
| 3.1  | Coverage          |                    | Coverage status            | Coverage     | .status       | https://www.hl7.org/fhir/codesystem-fm-status.html    |                         |
| 4.1  | Coverage          |                    | Start date                 | Coverage     | period.start  |                                                       |                         |
| 5.1  | Coverage          |                    | End date                   | Coverage     | period.end    |                                                       |                         |
| 6.1  | Coverage          |                    | Group id                   | Coverage     | class.value   | https://www.hl7.org/fhir/valueset-coverage-class.html | .class.type="group"     |
| 7.1  | Coverage          |                    | Group name                 | Coverage     | class.name    |                                                       |                         |
| 8.1  | Coverage          |                    | Plan                       | Coverage     | class.value   | https://www.hl7.org/fhir/valueset-coverage-class.html | .class.type="plan"      |
| 9.1  | Coverage          |                    | Payer                      | Coverage     | .payor        |                                                       | Reference(Organization) |


Where an entry is provided in the CMS BB2.0 FIELD column the definition of the field can be reviewed using the following URL:

https://bluebutton.cms.gov/resources/variables/{CMS_BB2.0_FIELD}/

Where {CMS_BB2.0_FIELD} is replaced with the Field value in lower case. For example:

https://bluebutton.cms.gov/resources/variables/bene_id/

#### 3-6-1-2 Example Coverage Resource

An example mapping of a Coverage resource is shown here:

<pre>
TODO: Add Coverage Resource in JSON format
</pre>

