§pdex-397: This operation **SHALL** be performed asynchronously following the FHIR Asynchronous Request Pattern. § The kick-off request (HTTP POST with Prefer: respond-async) returns HTTP 202 Accepted with a Content-Location header pointing to a status endpoint. Clients poll that endpoint until the operation completes, at which point the response contains Group resources categorizing members as matched, non-matched, or consent-constrained. The matched members Group Id is then used with the $davinci-data-export operation — also an async bulk export — to retrieve member health data in ndjson format.

§pdex-398: Input parameters **SHALL** conform to the PDex Multi-Member Match Request profile. § §pdex-399: Output parameters **SHALL** conform to the PDex Multi-Member Match Response profile. §


