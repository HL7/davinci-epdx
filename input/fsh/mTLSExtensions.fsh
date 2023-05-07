Extension: MtlsSignedObject
Id: pdex-mtls-signedobject-extension
Title: "mTLS Signed Object"
Description: "mTLS Endpoint Signed Object Extension"
* extension contains
  ObjectType 1..1 MS and
  Object 1..1 MS
* extension[ObjectType].value[x] only CodeableConcept
* extension[ObjectType].value[x] from MtlsObjectType (extensible)
* extension[Object].value[x] only base64Binary
// * extension[Object].value[x] only string
// * extension[Object].value[x] ^short = "This should be base64Binary but valuebase64Binary won't compile. Therefore setting to string"
* extension[Object].value[x] ^short = "took .pem file (X509 Encoded) and converted to base64Binary using https://tomeko.net/online_tools/PEM_to_base64.php?lang=en \n Convert back with https://tomeko.net/online_tools/base64_to_PEM.php?lang=en"


// --------------------------------
ValueSet: MtlsObjectType
Title: "mTLS Signed Object Types"
Description: "The Object type"
* ^experimental = true
* codes from system MtlsObjectCode
* ^copyright = "This Valueset is not copyrighted."

// --------------------------------
CodeSystem: MtlsObjectCode
Title: "mTLS Object Type Code"
Description: "Codes for the Signed Object Types"
* ^experimental = true
* ^caseSensitive = false
* #MTLS "mTLS signed Object"
