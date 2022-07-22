[Previous Page - Use Case Scenarios](UseCaseScenarios.html)

The Payer Data Exchange Implementation Guide defines methods for Providers to request information from Health Plans.

This IG does not cover the Payer-initiated transfer of unsolicited information to a provider. All Provider-oriented exchanges will be initiated as part of a Provider workflow, such as when a new patient presents for an appointment, using CDS-Hooks or triggered via a manual interaction with a SMART-on-FHIR app that generates the necessary CDS-Hook.

All search parameters and subsequent filtering of returned information SHALL be controlled by the Provider making the information request. The Payer does not filter information that has been requested by the provider except for the application of any restrictions based on the scopes of the access token issued to the Provider per applicable law.

Health Plans SHALL only restrict provider access to a member’s data where that access is required to be limited in accordance with State or Federal regulations.

Health Plan to Health Plan or Third-Party Application exchange is controlled by the Member using an OAuth2.0 Authorization or via a member-directed payer-to-payer exchange.


[Next Page - CDS-Hooks](CDS-Hooks.html)
