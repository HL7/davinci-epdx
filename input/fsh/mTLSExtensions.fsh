
Extension: MtlsSignedObject
Id: pdex-mtls-signedobject-extension
Title: "Signed Object"
Description: "mTLS Endpoint Signed Object Extension"

* extension contains
  ObjectType 1..1 MS and
  Object 1..1 MS
* extension[ObjectType].value[x] only CodeableConcept
* extension[ObjectType].value[x] from MtlsObjectType (extensible)
* extension[Object].value[x] only base64Binary


// --------------------------------




ValueSet: MtlsObjectType
Title: "mTLS Signed Object Types"
Description: "The Object type"
* codes from system MtlsObjectCode
* ^copyright = "This Valueset is not copyrighted."


CodeSystem: MtlsObjectCode
Title: "mTLS Object Type Code"
Description: "Codes for the Signed Object Types"
* #MTLS "mTLS signed Object"
