Instance: example-mtls-endpoint-bundle
InstanceOf: MtlsBundle
Description: "Example of mTLSbundle for Payer Endpoint for Payer-to-Payer Exchange"
* meta.lastUpdated = "2022-07-04T15:00:00.000Z"
* type = http://hl7.org/fhir/R4/codesystem-bundle-type.html#collection "Collection"
* timestamp = "2022-07-04T15:00:00.000Z"
// * entry[0].resource = "Organization/DiamondOnyxHealth1"
* link[0].relation = "self"
* link[0].url = "https://example.com/base/fhir/Bundle?ct=W3sidG9rZW4iOiIrUklEOn53MThjQUk5RlVPZ0lEQUFBQUFBQU"
* entry[0].fullUrl = "https://example.com/base/fhir/Organization/DiamondOnyxHealth2"
* entry[0].resource.resourceType = "Organization"
* entry[0].resource.id = "DiamondOnyxHealth2"
* entry[0].resource.identifier.value = "DiamondOnyxHealth2"
//* entry[0].resource.meta.lastUpdated = "2022-07-04T15:00:00.000Z"
//* entry[0].resource.active = true
//* entry[0].resource.name = "DiamondOnyxHealth IT Vendor Managing Organization"
//* entry[0].resource.type = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/OrgTypeCS#bus "Non-Healthcare Business"
//* entry[0].resource.endpoint.reference = "Endpoint/diamond-mtls-endpoint2"

* entry[1].fullUrl = "https://example.com/base/fhir/Endpoint/Diamond-mtls-endpoint2"
* entry[1].resource.resourceType = "Endpoint"
* entry[1].resource.id = "Diamond-mtls-endpoint2"
* entry[1].resource.identifier.value = "Diamond-mtls-endpoint2"
* entry[1].resource.payloadType = $EndpointPayloadTypeCS#NA "Not Applicable"
* entry[1].resource.extension[MtlsSignedObject].extension[ObjectType].valueCodeableConcept = MtlsObjectCodeCS#MTLS "mTLS signed Object"
* entry[1].resource.extension[MtlsSignedObject].extension[Object].valueBase64Binary = "MIIE+zCCA+OgAwIBAgISA/DY57CPqtRoFlG0JOdQZnRzMA0GCSqGSIb3DQEBCwUAMDIxCzAJBgNVBAYTAlVTMRYwFAYDVQQKEw1MZXQncyBFbmNyeXB0MQswCQYDVQQDEwJSMzAeFw0yMzA3MjcwMTU2NTBaFw0yMzEwMjUwMTU2NDlaMCIxIDAeBgNVBAMTF210bHMtZGV2LWRtZGguc2FmaGlyLmlvMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArgSWqFdWPDyX93O9ERnzAzfCqKLFrEsAnOSS5/fyil2qAE85y3/1v8VsrSsiUHz2SUXxQQ0dJGBT3jlZB+KZ9AtNhEAvvQiWtuzNNgO8Q7iVeh/8C+WP7XazGXzaEcpbtOqoM+JGqwWkRu2zlpJmFjAhIIasQMFH2HOWOukRN+8J4n6xy1JqqpDiUc3N77trY+R3PbuEfv0vOLwUYTBq+k1y3gQOy/Xl7l5J9+ugC3ftk+PMmByTbU6+ZDAK6QAGoY2SdwzY4dG36KlYsWA08cvgLUs3IaMxPK008YVx27a6/mJua3xhTnh/6muGyOUpmlYBCJJg43FOskeqNIIxaQIDAQABo4ICGTCCAhUwDgYDVR0PAQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMBAf8EAjAAMB0GA1UdDgQWBBT2H5abr3gkO0t5KpwP0K966DCuZTAfBgNVHSMEGDAWgBQULrMXt1hWy65QCUDmH6+dixTCxjBVBggrBgEFBQcBAQRJMEcwIQYIKwYBBQUHMAGGFWh0dHA6Ly9yMy5vLmxlbmNyLm9yZzAiBggrBgEFBQcwAoYWaHR0cDovL3IzLmkubGVuY3Iub3JnLzAiBgNVHREEGzAZghdtdGxzLWRldi1kbWRoLnNhZmhpci5pbzATBgNVHSAEDDAKMAgGBmeBDAECATCCAQQGCisGAQQB1nkCBAIEgfUEgfIA8AB1ALc++yTfnE26dfI5xbpY9Gxd/ELPep81xJ4dCYEl7bSZAAABiZVHEwAAAAQDAEYwRAIgVM1RAExo1mO7EDQ11PFzE6ewkx9TBzSrQMsxX9dkC5QCIA2tta+kt2aSk8lwqLBCEiSSSPXLg/1sbHrODtCjACsZAHcAejKMVNi3LbYg6jjgUh7phBZwMhOFTTvSK8E6V6NS61IAAAGJlUcTCAAABAMASDBGAiEAl1l1FIWpFnVupbIKz+PlPLmgKAtxkJiK6s9uVD1P81MCIQDRsPgnSaFlQbr4KdMc/B3KWZwjkXqoUmI6x1XApPY6gjANBgkqhkiG9w0BAQsFAAOCAQEAhELGwBfs7GsABz5kCUyLunMbdsb6VKjPrBABVTbG9amFcBVxDBSRBNx/NC8itT5k4u2JRnvjVQ/N2vtRqRZR564TwVnMow2ZIW2v9vUhQeX3LkIzzJq0CCLDO39PX1YPUDVCkzH1RV4AxuM26+We4+xmnXixNK6iKJjCvW2S0Q9CA6lQ2COi/tgUq8IIoKy5vFfjHsXul9aGMdzK39fxmO8QRysKBIVWfzb62bUNFO9FGVc7GbEGocqy20TiKBkUjR27T97Q1cMDwtzLwS/G2YKnEVtIJLk/cKG4UKcWx+pCHqvDaHRWUNQ2kofypCS+lLBQFQhXpSG8IwzOww54Kg=="

* entry[2].fullUrl = "https://example.com/base/fhir/Organization/DiamondOnyxHealth3"
* entry[2].resource.resourceType = "Organization"
* entry[2].resource.id = "DiamondOnyxHealth3"
* entry[2].resource.identifier.value = "DiamondOnyxHealth3"
//* entry[2].resource.meta.lastUpdated = "2022-07-04T16:00:00.000Z"
//* entry[2].resource.active = true
//* entry[2].resource.name = "DiamondOnyxHealth Payer Organization"
//* entry[2].resource.type = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/OrgTypeCS#payer "Payer"
//* entry[2].resource.endpoint.reference = "Endpoint/diamond-mtls-endpoint2"


* signature.type = $SignatureTypeCS#1.2.840.10065.1.12.1.1 "Author's Signature"
* signature.when = "2022-07-04T15:00:00.000Z"
* signature.who.reference = "Organization/DiamondOnyxHealth2"
* signature.sigFormat = urn:ietf:bcp:13#application/x-x509-ca-cert
* signature.data = "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"






// --------------------------------
// "took .pem file (X509 Encoded) and converted to base64Binary using
// https://tomeko.net/online_tools/PEM_to_base64.php?lang=en
// Convert back with:
// https://tomeko.net/online_tools/base64_to_PEM.php?lang=en"
// --------------------------------
//* extension[MtlsSignedObject].extension[Object].valueBase64Binary = """
//-----BEGIN CERTIFICATE-----
//MIIE+zCCA+OgAwIBAgISA/DY57CPqtRoFlG0JOdQZnRzMA0GCSqGSIb3DQEBCwUA
//MDIxCzAJBgNVBAYTAlVTMRYwFAYDVQQKEw1MZXQncyBFbmNyeXB0MQswCQYDVQQD
//EwJSMzAeFw0yMzA3MjcwMTU2NTBaFw0yMzEwMjUwMTU2NDlaMCIxIDAeBgNVBAMT
//F210bHMtZGV2LWRtZGguc2FmaGlyLmlvMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A
//MIIBCgKCAQEArgSWqFdWPDyX93O9ERnzAzfCqKLFrEsAnOSS5/fyil2qAE85y3/1
//v8VsrSsiUHz2SUXxQQ0dJGBT3jlZB+KZ9AtNhEAvvQiWtuzNNgO8Q7iVeh/8C+WP
//7XazGXzaEcpbtOqoM+JGqwWkRu2zlpJmFjAhIIasQMFH2HOWOukRN+8J4n6xy1Jq
//qpDiUc3N77trY+R3PbuEfv0vOLwUYTBq+k1y3gQOy/Xl7l5J9+ugC3ftk+PMmByT
//bU6+ZDAK6QAGoY2SdwzY4dG36KlYsWA08cvgLUs3IaMxPK008YVx27a6/mJua3xh
//Tnh/6muGyOUpmlYBCJJg43FOskeqNIIxaQIDAQABo4ICGTCCAhUwDgYDVR0PAQH/
//BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMBAf8E
//AjAAMB0GA1UdDgQWBBT2H5abr3gkO0t5KpwP0K966DCuZTAfBgNVHSMEGDAWgBQU
//LrMXt1hWy65QCUDmH6+dixTCxjBVBggrBgEFBQcBAQRJMEcwIQYIKwYBBQUHMAGG
//FWh0dHA6Ly9yMy5vLmxlbmNyLm9yZzAiBggrBgEFBQcwAoYWaHR0cDovL3IzLmku
//bGVuY3Iub3JnLzAiBgNVHREEGzAZghdtdGxzLWRldi1kbWRoLnNhZmhpci5pbzAT
//BgNVHSAEDDAKMAgGBmeBDAECATCCAQQGCisGAQQB1nkCBAIEgfUEgfIA8AB1ALc+
//+yTfnE26dfI5xbpY9Gxd/ELPep81xJ4dCYEl7bSZAAABiZVHEwAAAAQDAEYwRAIg
//VM1RAExo1mO7EDQ11PFzE6ewkx9TBzSrQMsxX9dkC5QCIA2tta+kt2aSk8lwqLBC
//EiSSSPXLg/1sbHrODtCjACsZAHcAejKMVNi3LbYg6jjgUh7phBZwMhOFTTvSK8E6
//V6NS61IAAAGJlUcTCAAABAMASDBGAiEAl1l1FIWpFnVupbIKz+PlPLmgKAtxkJiK
//6s9uVD1P81MCIQDRsPgnSaFlQbr4KdMc/B3KWZwjkXqoUmI6x1XApPY6gjANBgkq
//hkiG9w0BAQsFAAOCAQEAhELGwBfs7GsABz5kCUyLunMbdsb6VKjPrBABVTbG9amF
//cBVxDBSRBNx/NC8itT5k4u2JRnvjVQ/N2vtRqRZR564TwVnMow2ZIW2v9vUhQeX3
//LkIzzJq0CCLDO39PX1YPUDVCkzH1RV4AxuM26+We4+xmnXixNK6iKJjCvW2S0Q9C
//A6lQ2COi/tgUq8IIoKy5vFfjHsXul9aGMdzK39fxmO8QRysKBIVWfzb62bUNFO9F
//GVc7GbEGocqy20TiKBkUjR27T97Q1cMDwtzLwS/G2YKnEVtIJLk/cKG4UKcWx+pC
//HqvDaHRWUNQ2kofypCS+lLBQFQhXpSG8IwzOww54Kg==
//-----END CERTIFICATE-----
