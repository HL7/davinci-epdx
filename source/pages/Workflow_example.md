---
title: Workflow example
layout: default
active: Workflow example
---

# First Visit with new Provider
The patient calls their new provider to arrange for an annual physical.

The receptionist in the doctors office collects their personal information, health plan coverage information and creates an appointment, a patient record and an initial encounter record.  

The creation of an appointment activates a CDS Hook transaction: appointment-book. 

The provider's system is pre-configured to apply the following search criteria:

	- Encounters in the previous x months, excluding encounters at the provider's organization
	- All Procedures and Conditions known by the health plan
	- All medications dispensed in the past 6 months.
	
	A pre-configuration setting is used to set defaults for the CDS Hooks appointment-book call:
	
	*davinci-pdex.configuration-options*
	
	This configuration object would set the default settings for each enquiry type for the health plan appointment-book hook:
	
	<pre>
	{
	  "hook": "appointment-book",
    "title": "Payer XYZ Patient History Enquiry",
    "description": "Provides patient history to a provider from a health plan's records for a member",
    "id": "appointment-book",
	  "extension": {
		   "davinci-pdex.configuration-options": [
			    { 
				   "code" : "MemberHistory-Encounter",
					 "input" : [{
             "type: : "resourceType",
             "valueString" : "Encounter"
             },
            {
             "type: : "historyRange",
             "valuePeriod" : {
                "start" : "YYYY-MM-DD",
                "end" : "YYYY-MM-DD"
               },
              {
                "type" : "entityExcluded",
               "valueExpression" : "organization:not=XYZ123ABC"
              }
           }]
				 }
			 ]
	   },
			   { 
				   "code" : "MemberHistory-Procedure",
					 "input" : [{
             "type: : "resourceType",
             "valueString" : "Encounter"
             },
            {
             "type: : "historyRange",
             "valuePeriod" : {
                "start" : "YYYY-MM-DD",
                "end" : "YYYY-MM-DD"
               }
           }]
				 }
			 ]
	   },
		 { 
				   "code" : "MemberHistory-Medication",
					 "input" : [{
             "type: : "resourceType",
             "valueString" : "Procedure"
             },
            {
             "type: : "historyRange",
             "valuePeriod" : {
                "start" : "YYYY-MM-DD",
                "end" : "YYYY-MM-DD"
               }
           }]
				 }
			 ]
	   },
	}
	</pre>
	