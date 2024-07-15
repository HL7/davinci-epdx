[Previous Page - Security and Privacy](securityandprivacy.html)

{% include style_insert_table_blue.html %}

<div class="stu-note">
<b><i>This page has been updated to redlect the release of the CMS Prior Authorization Rule (CMS-0057).
The changes have been made to stay in sync with the bulk transfer requirements of the rule. 
</i></b>
</div>

The PDex IG implements APIs that require external entities to be granted access to a sub-set of records 
via FHIR APIs. SMART Scopes enable permissions and actions to be enforced based upon the type of 
resource. SMART Scopes are less effective at restricting data within a resource type. This page on 
FHIR Access Permissions outlines a method that could use the FHIR Group resource to track access 
permissions, for example to a subset of Patients, or a group of Group records. There are three
scenarios in the PDex IG that could utilize this approach.

| PDex API                       | Restrict Access To |
|--------------------------------|--------------------|
| Payer-to-Payer (Single Member) | Patient/{FHIR_id}  |
| Payer-to-Payer (Bulk Access)   | Group/{FHIR_id}    |
| Provider Access (Bulk Access)  | Group/{FHIR_id}    |

This page is provided as guidance for Implementers. It is possible/likely that Implementers will 
implement access permissions in an alternative system, such as the Authorization server.

The Payer-to-Payer APIs have a member-match operation that, in the case of a single member, returns a 
Patient/{FHIR_id} after a successful match. In the case of a bulk member-match, the matched members
are returned in a Matched Member Group resource. In both scenarios the requesting (New) Payer may
perform this match operation multiple times and should only be granted access to data for the matched 
members, whether in a Group or after a single match. An Implementer could choose to record the matched
Id (either Patient or Group) in a Group record that is associated with the requesting entity. 
Subsequently, when the requesting entity performs the data request (e.g. via the Da Vinci Data Export
Operation) the target FHIR_id could be checked against the Group Resource associated with the requesting
entity. Access to data would be granted if the target Patient or Group Id is found in the Requesting 
Entities Group record.

The Requesting Entity Group record could be constrained to a secific use case by defining a Profile 
where the Group.code defined the use case that the requesting entity's Access Permissions were 
constrained to. For example, to one of the three APIs identified in the table above.

In the case of the Provider Access API, a Provider representative, such as an EMR within a health system
may represent multiple Providers. The Payer could create a Group resource that is associated with the 
Provider Representative and included the Group Ids for the Providers they represent.

[Next Page - PDex Implementation Actors, Interactions, Data Payloads and Methods](pdeximplementationactorsinteractionsdatapayloadsandmethods.html)



