[Previous Page - PDex Implementation Actors, Interactions, Data Payloads and Methods](PDexImplementationActorsInteractionsDataPayloadsandMethods.html)


The following actors are recognized in the PDex IG:

- **Health Plan**: The Insurance entity, or Payer, who handles claims for services provided to their plan members. 
- **Member**: The health plan member / patient who is, or was, a member of a health plan.
- **Provider**: The practitioner or clinician, or their representative, that initiates a data access request to retrieve member data from a health plan.
- **Third Party Application**: Health Plan Members / Patients have a right under the Health Insurance Portability and Accountability Act of 1996 (HIPAA) to direct the information held by a covered entity, such as a Hospital or Health Plan to a third party of their choosing.

There are different terms used for an individual or patient in the Health Plan industry. Terms such as subscriber or member may be used. A subscriber and a member are not necessarily equivalent. For example the subscriber may be the primary family member on a plan that covers the entire family. Therefore the term Member will will be used through out this guide to identify the indivudal subject of the "member health history".

For the purposes of this IG a covered entity, such as a Provider, may create an application for connection to a Health Plan FHIR API.




[Next Page - Exchange Interactions](ExchangeInteractions.html)