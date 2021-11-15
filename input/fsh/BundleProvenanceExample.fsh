Instance: BundleWithProvenance
InstanceOf: Bundle
Description: "A bundle that returns provenance using _revinclude=Provenance:target"
* id = "3000002"
* meta.profile = "http://hl7.org/fhir/StructureDefinition/Bundle"
* type = http://hl7.org/fhir/bundle-type#searchset "Search Results"
* timestamp = "2020-09-28T23:26:23.217+00:00"
* total = 1
* link[0].relation = "self"
* link[0].url = "https://example.com/base/fhir/MedicationDispense?ct=W3sidG9rZW4iOiIrUklEOn53MThjQUk5RlVPZ0lEQUFBQUFBQU"
* entry[0].fullUrl = "https://example.com/base/MedicationDispense/1000001"
* entry[0].resource.resourceType = "MedicationDispense"
* entry[0].resource.id = "1000001"
* entry[0].resource.status = http://terminology.hl7.org/CodeSystem/medicationdispense-status#completed
* entry[0].resource.medicationCodeableConcept = $FDANationalDrugCodeCS#54458-872-10
* entry[0].resource.subject.reference = "Patient/1"
* entry[0].resource.performer.actor.reference = "Practitioner/4"
* entry[0].resource.location.reference = "Location/5"
* entry[0].resource.type =  http://terminology.hl7.org/CodeSystem/v3-ActCode#RF
* entry[0].resource.quantity.value = 60
* entry[0].resource.daysSupply.value = 30
* entry[0].search.mode = http://hl7.org/fhir/search-entry-mode#match
* entry[1].fullUrl = "https://example.com/base/Provenance/321000001"
* entry[1].resource.resourceType = "Provenance"
* entry[1].resource.id = "321000001"
* entry[1].resource.meta.versionId = "1"
* entry[1].resource.meta.lastUpdated = "2020-09-28T23:26:23.217+00:00"
* entry[1].resource.meta.profile = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/pdex-provenance"
* entry[1].resource.target[0].reference = "MedicationDispense/1000001"
* entry[1].resource.recorded = "2020-07-12T18:26:23.217+00:00"
* entry[1].resource.agent[0].type = http://hl7.org/fhir/us/core/CodeSystem/us-core-provenance-participant-type#transmitter "Transmitter"
* entry[1].resource.agent[0].who.reference = "Organization/2"
* entry[1].resource.entity.role = http://hl7.org/fhir/provenance-entity-role#source
* entry[1].resource.entity.what.display = "No reference available"
* entry[1].resource.entity.extension.url = "http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/ProvenanceSourceFrom"
* entry[1].resource.entity.extension.valueCodeableConcept = http://hl7.org/fhir/us/davinci-pdex/CodeSystem/ProvenancePayerDataSource#hl7ccda "HL7 C-CDA"
* entry[1].search.mode = http://hl7.org/fhir/search-entry-mode#include

