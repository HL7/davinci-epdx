[Previous Page - PDex Hooks](PDexHooks.html)


PDex supports three common scenarios where CDS Hooks **SHOULD** be used:

- New Patient presents at Provider
- Patient returns to Provider
- Patient presents at Specialist

The hook interaction for these scenarios is:
* appointment-book

When a Card is returned from the CDS Hooks appointment-book service by a Health Plan it will provide the following elements:

- An Access Token for secure access to the Health Plan's FHIR API
- The URL for the Health Plan's FHIR API 
- A result code indicating the result of a Member Search
- The returned information **MAY** include a link to a SMART-on-FHIR App to enable selection of resources by the Clinician that will be written to the Clinician's EMR system
- An information card with a human readable interpretation of the Member Search Result
- The information card **MAY** include a link to launch the SMART-on-FHIR App using the Access Token and FHIR Endpoint address to enable the Clinician to query information about their patient using the Health Plan's FHIR API.
 

The SMART-on-FHIR App **MAY** be configured with default FHIR search queries that can be set by the Clinician, or their organization. 
 
 Examples of preset search queries parameters **MAY** include, but are not limited to:
- Period (Start and optionally End date)
- Excluded Practitioner(s)
- Excluded Organization(s)
- Excluded Location(s)

The later three items are used to enable the Provider to exclude information that they may already have in their system.
These query parameters are examples of FHIR API queries. Any valid FHIR search query for a Patient **MAY** be constructed by the Provider.
The potentially valid search query parameters will be limited by the options provided in the Health Plan's FHIR API CapabilityStatement.

As a minimum the Health Plan's FHIR API **SHALL** limit returned results to the records that are related to the Patient/Member that is the subject of the Provider query.

As a minimum searches of FHIR Resources **SHOULD** support the following query parameters where appropriate for a Resource Type:

- \_lastUpdated (e.g. Last Updated after yyyy-mm-dd.HH:MM:ss
- Period (ie. Date / Time filters)
- Inclusions or exclusions based upon Organization, Location or Practitioners



[Next Page - Systems](Systems.html)