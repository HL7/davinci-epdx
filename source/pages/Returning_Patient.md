---
title: Returning Patient
layout: default
active: Returning Patient
---

The returning patient scenario is similar to a new patient workflow. The difference is that the Provider does not need the full patient history. 

In the returning patient workflow the provider will apply additional filtering conditions. These conditions will avoid requesting information from the payer that the provider is already aware of.

Examples of these filters are:
* Provide patient information since the date of their last visit with me
* Provide patient information excluding encounters at my Organization or Location

The information to submit to the Payer CDS- Hooks service can be compiled via a SMART-on-FHIR app that is registered with the Provider's EMR.
