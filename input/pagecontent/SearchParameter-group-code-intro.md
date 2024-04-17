#### Search By Group Code

This search parameter enables a query against the Group resource to identify the following types of groups:

- pdexprovidergroup
- match
- nomatch
- consentconstraint

The FHIR Store **MAY** only have records for **pdexprovidergroup**, as used by the [Provider Access API](provider-access-api.html),
and **match**, as used by the [Payer-to-Payer Bulk API](payertopayerbulkexchange.html) for members that successfully matched.

These codes relate to the following Group Profiles:

- [PDex Provider Group](StructureDefinition-pdex-provider-group.html) for Attributed Members used in the [Provider Access API](provider-access-api.html).
- [PDex Member Match Group](StructureDefinition-pdex-member-match-group.html) for Matched Members in the  [Payer-to-Payer Bulk API](payertopayerbulkexchange.html).
