
#### Mandatory Search Parameters

1. **SHALL** support searching for code for a Group.
   [Group_Code Search Parameter](SearchParameter-group-code.html)

   `GET [base]/Group?code={code}`

   Example:

   GET [base]/Group?code="match"

   NOTE:

   Server should limit responses to records that requesting user or service (i.e. Payer in case of Member-Match) is permitted to access.
   For example, Matched Group lists for a Payer.


[Back to Artifacts](artifacts.html#structures-resource-profiles)