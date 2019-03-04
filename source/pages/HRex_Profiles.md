---
title: HRex Profiles
layout: default
active: HRex Profiles
---

Will define coverage and provenance here initially, then deprecate when present in US Core. 
## Coverage
* Start with http://hl7.org/fhir/us/davinci-deqm/2018Sep/STU3/StructureDefinition-coverage-deqm.htmll, but point to US Core references and make FHIR R4 compatible. 

## Provenance
* Will do from scratch per the NPRM draft requirements:
* https://www.healthit.gov/sites/default/files/nprm/ONCCuresNPRMUSCDI.pdf

* Require occurred[x]
* Point to US Core for references from who and onBehalfOf
* Make signature must-support

## Practitioner
* Start with US Core, but make a required slice on the identifier that must be an NPI. 
* Base requirements off http://hl7.org/fhir/us/davinci-deqm/2018Sep/STU3/StructureDefinition-practitioner-deqm.html

## PractitionerRole
* Based on US Core, but references HRex Practitioner and HRex Organization. 


## Organization
* Start with US Core, but make a required slice on the identifier that must be an NPI or a TIN. 
* Base requirements off http://hl7.org/fhir/us/davinci-deqm/2018Sep/STU3/StructureDefinition-organization-deqm.html