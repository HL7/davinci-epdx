---
title: 2 Introduction
layout: default
active: 2 Introduction
---

                                                                                                                                                   
The PDex IG identifies three actors and specifies three interactions that occur. Each interaction differs based upon the actors involved and the data payload that **SHALL** be communicated. 
                                                                                                                                                    
Whereas the Blue Button 2.0 initiative is specifying the profiles used to communicate claims information between health plans and their members. The PDex Implementation Guide (IG) is focused on presenting a members health and claims information in FHIR clinical profiles that are more easily consumed by Electronic Medical Records (EMR) systems. 
                                                                                                                                                   
The same FHIR profiles used to support communication between the health plan and providers will also be used to provide the payload of member health information that will be exchanged between health plans when authorized by a health plan member.
                                                                                                                                                   
While the authorization and communication mechanisms may differ between the provider-to-payer exchange (P2HPX) and the member-authorized  Payer-to-Payer exchange (MauthHPX) or member-authorized Payer to Third-Party Application exchange (Mauth3PX)  the payload of member history will be the same.  
                                                                                                                                                   
The objective with the above approach is to:
- Minimize the proliferation of FHIR profiles by encouraging the re-use of FHIR profiles that have seen significant development effort invested in development and implementation
- Consolidate the number of operational interfaces that health plans and  EMR systems need to maintain in order to meet regulatory requirements.