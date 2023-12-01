Instance: patient-everything-pdex
InstanceOf: OperationDefinition
Usage: #definition
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* extension[=].valueInteger = 5
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension[=].valueCode = #trial-use
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fm
//* url = "http://hl7.org/fhir/OperationDefinition/patient-everything-pdex"
* url = "http://hl7.org/fhir/us/davinci-pdex/OperationDefinition/patient-everything-pdex"
* version = "4.0.1"
* id = "patient-everything-pdex"
* name = "PatientEverythingPdex"
* status = #draft
* kind = #operation
* date = "2022-02-03T12:49:00+00:00"
* publisher = "HL7 (FHIR Project)"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://hl7.org/fhir"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "fhir@lists.hl7.org"
* description = "This operation is used to return all the clinical information related to a single patient described in the resource or context on which this operation is invoked. The response is a bundle of type \"searchset\". At a minimum, the patient resource(s) itself is returned, along with any other clinical (as defined by USCDI) resources that the server has that are related to the patient, and that are available for the given user. The server also returns whatever resources are needed to support the records - e.g., linked practitioners, medications, locations, organizations etc. It should be noted that the server may need to filter resources to exclude resource profiles that fall outside of the clinical context. For example, excluding Blue Button claims that use the ExplanationOfBenefit resource, while including PDex Prior Authorizations that use the same base resource.   \n\nThe intended use for this operation is to provide a payer with access to the entire clinical record.  The server SHOULD return at least all resources that it has that are in the patient compartment for the identified patient(s), and any resource referenced from those, including binaries and attachments. In the US Realm, at a minimum, the resources returned SHALL include all the data covered by the meaningful use common data elements as defined in the US Core Implementation Guide. The PDex Implementation Guide adds Pdex-Device, Pdex-MedicationDispense and Pdex-PriorAuthorization to the clinical resource set. Other applicable implementation guides may make additional rules about how much information that is returned."
* code = #everything
* comment = "The key differences between this operation and simply searching the patient compartment are:    \n\n* unless the client requests otherwise, the server returns the entire result set in a single bundle (rather than using paging)  \n* the server is responsible for determining what resources to return as included resources (rather than the client specifying which ones). \n\nThis frees the client from needing to determine what it could or should ask for, particularly with regard to included resources. Servers should consider returning appropriate Provenance and AuditTrail on the returned resources, even though these are not directly part of the patient compartment. \n\nIt is assumed that the server has identified and secured the context appropriately, and can either associate the authorization context with a single patient, or determine whether the context has the rights to the nominated patient, if there is one.    In such cases, the server may choose to return an error rather than all the records.  Specifying the relationship between the context, a user and patient records is outside the scope of this specification (though see [The Smart App Launch Implementation Guide](http://hl7.org/fhir/smart-app-launch). \n\nServers may choose to require that such requests are made [asynchronously](https://www.hl7.org/fhir/async.html), and associated with [bulk data formats](https://www.hl7.org/fhir/formats.html#bulk). Alternatively, clients may choose to page through the result set (or servers may require this). Paging through the results is done the same as for [Searching](https://www.hl7.org/fhir/http.html#paging), using the [_count](https://www.hl7.org/fhir/search.html#count) parameter, and Bundle links. Implementers should note that paging will be slower than simply returning all the results at once (more network traffic, multiple latency delays) but may be required in order not to exhaust available memory reading or writing the whole response in a single package. Unlike searching, there is no inherent user-display order for the $everything-pdex operation. Servers might consider sorting the returned resources in descending order of last record update, but are not required to do so.\n\nThe _since parameter is provided to support periodic queries to get additional information that has changed about the patient since the last query. This means that the _since parameter is based on record time. The value of the _since parameter should be set to the time from the server. If using direct response, this is the timestamp in the response header. If using the async interface, this is the transaction timestamp in the json response. Servers should ensure that the timestamps a managed such that the client does not miss any changes. Clients should be able to handle getting the same response more than once in the case that the transaction falls on a time boundary. Clients should ensure that the other query parameters are constant to ensure a coherent set of records when doing periodic queries."
* resource = #Patient
* system = false
* type = true
* instance = true
* parameter[0].name = #start
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The date range relates to care dates, not record currency dates - e.g. all records relating to care provided in a certain date range. If no start date is provided, all records prior to the end date are in scope."
* parameter[=].type = #date
* parameter[+].name = #end
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The date range relates to care dates, not record currency dates - e.g. all records relating to care provided in a certain date range. If no end date is provided, all records subsequent to the start date are in scope."
* parameter[=].type = #date
* parameter[+].name = #_since
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Resources updated after this period will be included in the response. The intent of this parameter is to allow a client to request only records that have changed since the last request, based on either the return header time, or or (for asynchronous use), the transaction time"
* parameter[=].type = #instant
* parameter[+].name = #_type
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "One or more parameters, each containing one or more comma-delimited FHIR resource types to include in the return resources. In the absence of any specified types, the server returns all resource types. It should be noted that the server may need to filter resources to exclude resource profiles that fall outside of the clinical context. For example, excluding Blue Button claims that use the ExplanationOfBenefit resource, while including PDex Prior Authorizations that use the same base resource."
* parameter[=].type = #code
* parameter[+].name = #_count
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "See discussion below on the utility of paging through the results of the $everything operation"
* parameter[=].type = #integer
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The bundle type is \"searchset\""
* parameter[=].type = #Bundle
