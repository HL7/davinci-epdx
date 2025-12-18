
#### Mandatory Search Parameters

1. **SHALL** support searching for code for a Group.
     [Group_Code Search Parameter](SearchParameter-group-code.html)

    `GET [base]/Group?code={code}`

    Example:

    GET [base]/Group?code="pdexprovidergroup"

    NOTE:

    Server should limit responses to records that requesting user or service is permitted to access.
    For example, Attributed Group lists for Practitioners working in a Facility where the system accessing is accessing on behalf of the facility.


[Back to Artifacts](artifacts.html)
