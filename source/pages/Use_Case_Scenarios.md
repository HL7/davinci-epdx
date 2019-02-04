---
title: Use Case Scenarios
layout: default
active: Use Case Scenarios
---

This implementation guide addresses four use cases:

* New Patient at Primary Care Provider
* Returning Patient at Primary Care Provider
* New Patient at Specialist
* Medication order for Patient

### New Patient at Primary Care Provider

When a new patient registers with a Provider a request for information about the patient can be issued to the Payer providing health coverage.
This request can be triggered in one of two ways:
APPENDIX A 	When an appointment is being confirmed
APPENDIX B 	When the patient checks-in for the appointment

### Returning Patient at Primary Care Provider
When a patient returns to a provider a request for new information about the patient can be issued to the Payer providing health coverage.

This request can be triggered in one of two ways:

1.	When an appointment is being confirmed
2.	When the patient checks-in for the appointment


This use case can differ from the New Patient use case by the provider adding a scoping parameter to limit information to a period and to also exclude events that they, or their organization were involved with.

### New Patient at Specialist

When a patient presents at a specialist a request for information about the patient can be issued to the Payer providing health coverage.

This request can be triggered in one of two ways:

1. 	When an appointment is being confirmed
2. 	When the patient checks-in for the appointment

This use can may differ slightly from the New Patient Use Case by the Specialist wanting to know if the patient is attributed to a Primary Care Provider.

### Medication order for Patient

When a patient is receiving treatment from a Provider or Specialist a call to the Payer providing health coverage may be made during a Medication Dispense workflow to determine the medications that the Patient may have received through their drug plan coverage.

The provider may also send an enquiry to the health plan to determine if the patient is eligible for any health benefits, such as wellness programs or support services.
