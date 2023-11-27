[Previous Page - Workflow Examples](workflowexamples.html)


This IG provides a mechanism for Member-authorized exchange of their Health History:

* From an old Health Plan to a new Health Plan
* From their Health Plan to a third-party application of the member's choice.

The authorization method uses the [OAuth 2.0](https://oauth.net/2/) protocol to issue a token to an authorized application or service. The authorized application can then use the token to enable interaction with the FHIR REST API.

When a Member is authorizing sharing of the Member Health History with another Health Plan, or a Third Party Application, via the OAuth 2.0 protocol the Health Plan that is operating the API **MAY** offer the Member an option to allow the sharing of sensitive information, such as behavioral health data, resulting in the data being shared excluding sensitive data that is covered by state and/or federal regulations. However, under the HIPAA Right of Access the Member is at liberty to share that information if they so wish.

<table>
	<tr>
		<td>
			<img  width="100%" height="auto" src="MemberAuthExchange.png">
		</td>	
	</tr>	
</table>

The well-defined mechanism for enabling Member/Patient authorization to share information with an application using the FHIR API is to use OAuth2.0 as the Authorization protocol. The member **SHALL** authenticate using credentials they have been issued by, or accepted by the Health Plan. This is typically the member's customer portal credentials.

After authenticating the Member **SHALL** be presented with an Authorization process that enables them to approve the sharing of information with the Third Party, or new Health Plan, Application that has client application credentials registered with the Health Plan.

The Authorization process **SHALL** provide the ability for the authorized representative to designate a third-party application that will have access to all information permitted by current state and federal regulations.  

After successfully authorizing an application an Access Token and Optional Refresh Token **SHALL** be returned to the requesting application. 

The requesting application **SHALL** use the access token to access the Health Plan's secure FHIR API to download the information that the Member is allowed to access. 

Applications are registered with the API Endpoint. The application owner **MAY** be:
- Another Health Plan
- An Independent developer, such as a Personal Health Record application developer
- Another Covered Entity, such as a Provider.


[Next Page - Change History](changehistory.html)
