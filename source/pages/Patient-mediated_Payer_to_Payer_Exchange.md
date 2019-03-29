---
title: Patient-mediated Payer to Payer Exchange
layout: default
active: Patient-mediated Payer to Payer Exchange
---

Accommodating a Patient-Mediated exchange of information between Old and New Health plans is achieved by implementing the following elements:

* A mapping of claims and associated information from the member record into the USCDI resource set. This is the same transformation that is used to support the provider requests detailed in this IG.
* A FHIR-based API that is protected by an OAuth2.0 authorization protocol.

With these components each health plan would register an application or service with each health plan they need to share information with. Then a new health plan member would proceed as follows:

* Member logs into new plan portal/app
* Connects to Old Health Plan via OAuth 2.0 methods
* Authenticates with old plan
* Authorizes release of data to new plan
* New Health Plan receives access token and pulls information from Old Plan


This same method of transfer also supports the release of data to third party applications. The Health Plan integration is registered as an App with the health plan that is the data holder in the same way that a third-party application is registered.

There is one difference in the scope of the sharing for Health Plans and Third-Party Apps:

* Third-party apps are receiving information via the patient/member's HIPAA right of access to release records. As such the release can include all of the member's health records.
* The Health Plan release, while using the same transport and authorization mechanism would require specific consent from the member to release behavorial health and other protected classes of information.


