---
title: FHIR
layout: default
active: FHIR
---

This implementation guide uses terminology, notations and design principles that are specific to FHIR. Before reading this implementation guide, its important to be familiar with some of the basic principles of FHIR as well as general guidance on how to read FHIR specifications. Readers who are unfamiliar with FHIR are encouraged to read (or at least skim) the following prior to reading the rest of this implementation guide.

   - [FHIR overview](http://build.fhir.org/overview.html)
   - [Developer's Introduction](http://build.fhir.org/overview-dev.html) 
   - [Clinical Introduction](http://build.fhir.org/overview-clinical.html)
   - [FHIR data types](http://build.fhir.org/datatypes.html)
   - [Using codes](http://build.fhir.org/terminologies.html)
   - [References between resources](http://build.fhir.org/references.html)
   - [How to read resource and profile definitions](http://build.fhir.org/formats.html)
   - [Base resource](http://build.fhir.org/resource.html)
   
This implementation guide builds on three different versions of FHIR - R4, STU3 and DSTU2. More specifically profiles are based on US Core or Argonaut versions of the respective FHIR version. The DSTU2/Argonaut version is intended to support the versions of systems currently in production by EHR vendors. The former is intended to ensure the implementation guide is aligned with the current direction of the FHIR standard. Initial implementation will likely focus on Argonaut and R4. Payer and clinical systems will likely eventually need to support both.   
