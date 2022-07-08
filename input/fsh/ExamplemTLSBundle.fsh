Instance: example-mtls-endpoint-bundle
InstanceOf: mtls-bundle
Description: "Example of mTLS Endpoint bundle"
* type = http://hl7.org/fhir/R4/codesystem-bundle-type.html#collection "Collection"
* timestamp = "2022-07-04T15:00:00.000Z"
// * entry[0].resource = "Organization/DiamondOnyxHealth1"
* entry[0].resource.resourceType = "Organization"
* entry[0].resource.id = "DiamondOnyxHealth1"
* signature.type.code = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signature.when = "2022-07-04T15:00:00.000Z"
* signature.who.reference = "Organization/DiamondOnyxHealth1"
* signature.sigFormat = urn:ietf:bcp:13#application/x-x509-ca-cert



// ------------------------------

Instance: mtlsorganization1
InstanceOf: MtlsOrganization
Description: "Example of mTLS Managing Organization"
* identifier.value = "DiamondOnyxHealth1"
* active = true
* type = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/OrgTypeCS#payer "Payer"
* endpoint.reference = "Endpoint/diamond-mtls-endpoint1"




// ---------------------------------

Instance: diamond-mtls-endpoint1
InstanceOf: MtlsEndpoint
Description: "Example of Payer mTLS Endpoint that is linked from Organization and incorporated in bundle"
* identifier.value = "Diamond-mtls-endpoint1"
* status = http://hl7.org/fhir/endpoint-status#active "Active"
* connectionType = http://terminology.hl7.org/CodeSystem/endpoint-connection-type#hl7-fhir-rest "HL7 FHIR"
* name = "Payer-Payer Exchange"
* managingOrganization.reference = "Organization/DiamondOnyxHealth1"
* address = "https://p2p.diamondonyx.example.com/mtlsendpoint"
* payloadType = http://terminology.hl7.org/CodeSystem/endpoint-payload-type#any "Any"
* extension[MtlsSignedObject].extension[ObjectType].valueCodeableConcept = MtlsObjectCode#MTLS "mTLS signed Object"
// * extension[MtlsSignedObject].extension[Object].valuebase64Binary = """
// valuebase64Binary won't compile. Reverting to string
* extension[MtlsSignedObject].extension[Object].valueString = """
-----BEGIN CERTIFICATE-----
MIIHLDCCBRSgAwIBAgIBAjANBgkqhkiG9w0BAQsFADCBlDELMAkGA1UEBhMCVVMx
ETAPBgNVBAgMCE1hcnlsYW5kMRIwEAYDVQQHDAlCQUxUSU1PUkUxFjAUBgNVBAoM
DU9ueXhIZWFsdGguaW8xEDAOBgNVBAsMB0RhVmluY2kxEjAQBgNVBAMMCWNhLXNl
cnZlcjEgMB4GCSqGSIb3DQEJARYRc3VwcG9ydEBzYWZoaXIuaW8wHhcNMjIwNzA2
MjEzNzUzWhcNMjcwMTExMjEzNzUzWjB9MQswCQYDVQQGEwJVUzERMA8GA1UECAwI
TWFyeWxhbmQxFjAUBgNVBAoMDU9ueXhIZWFsdGguaW8xEDAOBgNVBAsMB0RhVmlu
Y2kxDzANBgNVBAMMBnNlcnZlcjEgMB4GCSqGSIb3DQEJARYRc3VwcG9ydEBzYWZo
aXIuaW8wggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQCaT1TWD4SbpW2j
IYMJ5+XKOX5fAvFkBvh5oBiYw39op7GwcxuWXRCEaW2RZs0g1AWECLxoNpInYRwT
A9yfWgkGACOk7vyndJk0rFupeNPsz4G+4/cKo8RCDiMXFls0C0JdluKuCNZpPPDC
OOGRo/uKbNNSlD0h6WnuXon5dxC456J53HyJN3eiNpES3DYA4t2FRw7H4OcgAj+N
UL8ObL+fXT3S1SspdAwwLwwxP5imsBDRbQll6QfohpiYWOb7qq2wgDg4zLNhdgHY
jzo1B/BBw8VVC3xc1eGmHSit0wwwxqhW0tTQq5eDjGXjcuH+RccgzskCV4DV/kyy
650IQ2fJer1HjV95PptHWGddfub607rmuJaxJt6K3qNNKVMoJ5Oa0VrL/grToa1c
raMyVmmLny99r5hBrIkpocNRHEjpXyC2saRJaw+/SrY0yTz+4HH3LMEXskQrMZy5
t6ea5ttBh8nu0RnjriLRwRt7N7x4aifQbQsFcnAHR5hejE5ddfaop+dwxrSbSbAY
8AzxsIUS8o/P4yRzBnIWJ9pHsie2f8G1HL+gV/S7ydXDY557RS2pIGhRG7mrG53N
lcyeDfqBdgBiMbgwB3EKedQHRmvBNLYxLWjzFhqxJGh8eebLKdIz8pLBbDd/EfZr
GsdWLHXJzQVhgw0kvEyi4Nz6vMsj1wIDAQABo4IBnTCCAZkwCQYDVR0TBAIwADAR
BglghkgBhvhCAQEEBAMCBkAwMwYJYIZIAYb4QgENBCYWJE9wZW5TU0wgR2VuZXJh
dGVkIFNlcnZlciBDZXJ0aWZpY2F0ZTAdBgNVHQ4EFgQU9k21J6NamOapnKsvDOda
Mgx2yckwgdQGA1UdIwSBzDCByYAUheDIC8s3tQVysz1yc27KXoWOJ5ChgZqkgZcw
gZQxCzAJBgNVBAYTAlVTMREwDwYDVQQIDAhNYXJ5bGFuZDESMBAGA1UEBwwJQkFM
VElNT1JFMRYwFAYDVQQKDA1Pbnl4SGVhbHRoLmlvMRAwDgYDVQQLDAdEYVZpbmNp
MRIwEAYDVQQDDAljYS1zZXJ2ZXIxIDAeBgkqhkiG9w0BCQEWEXN1cHBvcnRAc2Fm
aGlyLmlvghR+2HAsO5YuwZbFABlmBbNOsnjbozAOBgNVHQ8BAf8EBAMCBaAwEwYD
VR0lBAwwCgYIKwYBBQUHAwEwKQYDVR0RBCIwIIcEwKgAcocECgACD4ISc2VydmVy
LmV4YW1wbGUuY29tMA0GCSqGSIb3DQEBCwUAA4ICAQBqgzWlyKc7efnuu3o5RQlF
hlFHsrqER9lHY5De7593fY4lccnmSEQ64zXUNHMm+27RTxsHcNVegisNxXXhXQq6
/qWnmxGCVLv82AECRP9gT+uCf7ERejFwmpVZNdXDCjUbesreVhlxuPKNV/NTSGnk
qlgB4qYFjChV/a6n9OKtjeQwFskW0g2nNqax8wmWd5WHwwP5lbtE95PUdfnbVpyZ
TZYT/Ik1/jSpOzh9Njmy0gCX3OyX7kD2z2dAI/GaDvFB4UeSaZh8bHTSd7bKEvdo
KNFVSgixW32Vg0qzcoEbOS6hkalJJoZ5riHj9WuKJz/bkKxluNoWGzWG5om3/JJ+
RWcCKR5xDG0/+PLulXQlVj4hNxqxj4JHjBvvsvqbLoLrmWoP8nzVPli2mP8jsfHV
2r9/EgNYc524FUUNywIp8tlzgu0PqjJslkgalyg/SjJGXolecBqnEbsO+Z0HIjZA
XXh7VihHB4XMrYaJe5r7Go9rfEQ1R6haR8GxqMDnSf47YArr7eEb7WaR6fLvsHGx
F7nuNEBCf6H1xTgZZ2VpPF8YaR+EZ9bt0xsGNcrkBf1BqWtjd3M9ZMjfP5Yid5eT
BLl1RNuYlUW+021qDir5Vfh7bSHJtn+ld8m4ctdgEbn+o5t/EGgJUqMkQGN079cK
RqzvauPLsGaFv+28rA2KDQ==
-----END CERTIFICATE-----
"""
