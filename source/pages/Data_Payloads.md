---
title: Data Payloads
layout: default
active: Data Payloads
---

The PDex IG defines four types of data payload:

1. Member Clinical and Claims-derived History
2. Healthcare Network Directory 
3. Pharmacy Network Directory
4. Medication Formulary

All resources available via a FHIR API endpoint **SHALL** be declared in a FHIR CapabilityStatement.

### 1. Member Clinical and Claims-derived History

The FHIR Resources that comprise the Member Clinical and Claims-derived history SHOULD include the following profiles:

#### US Core

- [US Core AllergyIntolerance Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-allergyintolerance.html)
- [US Core CarePlan Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-careplan.html)
- [US Core CareTeam Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-careteam.html)
- [US Core Condition Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-condition.html)
- [US Core Device Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-device.html)
- [US Core DiagnosticReport Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-diagnosticreport.html)
- [US Core Diagnostic Report Profile for Report and Note exchange](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-new-us-core-diagnosticreport.html)
- [US Core DocumentReference Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-documentreference.html)
- [US Core Encounter Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-encounter.html)
- [US Core Goal Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-goal.html)
- [US Core Immunization Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-immunization.html)
- [US Core Location Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-location.html)
- [US Core Medication Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-medication.html)
- [US Core MedicationRequest Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-medicationrequest.html)
- [US Core MedicationStatement Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-medicationstatement.html)
- [US Core Organization Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-organization.html)
- [US Core Patient Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-patient.html)
- [US Core Pediatric BMI Observation Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-pediatric-bmi.html)
- [US Core Pediatric Weight Observation Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-pediatric-weight.html)
- [US Core Practitioner Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-practitioner.html)
- [US Core PractitionerRole Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-practitionerrole.html)
- [US Core Procedure Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-procedure.html)
- [US Core Result Observation Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-observationresults.html)
- [US Core Smoking Status Observation Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-smokingstatus.html)
In addition US Core uses the [Vital Signs Profile](http://hl7.org/fhir/R4/observation-vitalsigns.html) from the FHIR Specification.

#### Da Vinci HRex

- [ HRex Coverage](http://build.fhir.org/ig/HL7/davinci-ehrx/StructureDefinition-hrex-coverage.html)
- [HRex MedicationDispense]() **_TODO_**
- [HRex Provenance](http://build.fhir.org/ig/HL7/davinci-ehrx/StructureDefinition-hrex-provenance.html)

#### CapabilityStatement

The FHIR CapabilityStatement defines the resources and operations permitted on the resources exposed via the FHIR API.

The Permitted Operations for the FHIR Profiles covered in this payload section are defined as follows:

<table>
  <tr>
    <th> Resource Type </th>
    <th> Profile </th>
    <th> Read </th>
    <th> V-Read </th>
    <th> Search </th>
    <th> Update </th>
    <th> Create </th>
    <th> Updates </th>
    <th> History </th>
  </tr>
  <tr>
    <td>AllergyIntolerance</td>
    <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-allergyintolerance.html</td>
    <td>Y</td>
    <td>Y</td>
    <td>Y</td>
    <td></td>
    <td></td>
    <td></td>
    <td>Y</td>
  </tr>  
  <tr>
    <td>CarePlan</td>
    <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-careplan.html</td>
    <td>Y</td>
    <td>Y</td>
    <td>Y</td>
    <td></td>
    <td></td>
    <td></td>
    <td>Y</td>
  </tr>  
  <tr>
    <td>CareTeam</td>
    <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-careteam.html</td>
    <td>Y</td>
    <td>Y</td>
    <td>Y</td>
    <td></td>
    <td></td>
    <td></td>
    <td>Y</td>
  </tr>  
  <tr>
    <td>Condition</td>
    <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-condition.html</td>
    <td>Y</td>
    <td>Y</td>
    <td>Y</td>
    <td></td>
    <td></td>
    <td></td>
    <td>Y</td>
  </tr>  
  <tr>
    <td>Coverage</td>
    <td>http://build.fhir.org/ig/HL7/davinci-ehrx/StructureDefinition-hrex-coverage.html</td>
    <td>Y</td>
    <td>Y</td>
    <td>Y</td>
    <td></td>
    <td></td>
    <td></td>
    <td>Y</td>
  </tr>  
  <tr>
    <td>Device</td>
    <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-device.html</td>
    <td>Y</td>
    <td>Y</td>
    <td>Y</td>
    <td></td>
    <td></td>
    <td></td>
    <td>Y</td>
  </tr>  
  <tr>
    <td>DiagnosticReport</td>
    <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-diagnosticreport.html</td>
    <td>Y</td>
    <td>Y</td>
    <td>Y</td>
    <td></td>
    <td></td>
    <td></td>
    <td>Y</td>
  </tr>  
   <tr>
     <td>DiagnosticReport for report and Note Exchange</td>
     <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-new-us-core-diagnosticreport.html</td>
     <td>Y</td>
     <td>Y</td>
     <td>Y</td>
     <td></td>
     <td></td>
     <td></td>
     <td>Y</td>
   </tr>  
   <tr>
      <td>DocumentReference</td>
      <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-documentreference.html</td>
      <td>Y</td>
      <td>Y</td>
      <td>Y</td>
      <td></td>
      <td></td>
      <td></td>
      <td>Y</td>
    </tr>  
   <tr>
      <td>Encounter</td>
      <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-encounter.html</td>
      <td>Y</td>
      <td>Y</td>
      <td>Y</td>
      <td></td>
      <td></td>
      <td></td>
      <td>Y</td>
    </tr>  
    <tr>
      <td>Goal</td>
      <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-goal.html</td>
      <td>Y</td>
      <td>Y</td>
      <td>Y</td>
      <td></td>
      <td></td>
      <td></td>
      <td>Y</td>
    </tr>  
    <tr>
      <td>Immunization</td>
      <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-immunization.html</td>
      <td>Y</td>
      <td>Y</td>
      <td>Y</td>
      <td></td>
      <td></td>
      <td></td>
      <td>Y</td>
    </tr>  
    <tr>
      <td>Location</td>
      <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-location.html</td>
      <td>Y</td>
      <td>Y</td>
      <td>Y</td>
      <td></td>
      <td></td>
      <td></td>
      <td>Y</td>
    </tr>  
    <tr>
      <td>Medication</td>
      <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-medication.html</td>
      <td>Y</td>
      <td>Y</td>
      <td>Y</td>
      <td></td>
      <td></td>
      <td></td>
      <td>Y</td>
    </tr>  
    <tr>
      <td>MedicationDispense</td>
      <td></td>
      <td>Y</td>
      <td>Y</td>
      <td>Y</td>
      <td></td>
      <td></td>
      <td></td>
      <td>Y</td>
    </tr>  
    <tr>
      <td>MedicationRequest</td>
      <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-medicationrequest.html</td>
      <td>Y</td>
      <td>Y</td>
      <td>Y</td>
      <td></td>
      <td></td>
      <td></td>
      <td>Y</td>
    </tr>  
    <tr>
      <td>MedicationStatement</td>
      <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-medicationstatement.html</td>
      <td>Y</td>
      <td>Y</td>
      <td>Y</td>
      <td></td>
      <td></td>
      <td></td>
      <td>Y</td>
    </tr>  
    <tr>
      <td>Organization</td>
      <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-organization.html</td>
      <td>Y</td>
      <td>Y</td>
      <td>Y</td>
      <td></td>
      <td></td>
      <td></td>
      <td>Y</td>
    </tr>  
    <tr>
      <td>Patient</td>
      <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-patient.html</td>
      <td>Y</td>
      <td>Y</td>
      <td>Y</td>
      <td></td>
      <td></td>
      <td></td>
      <td>Y</td>
    </tr>
    <tr>
      <td>Pediatric BMI Observation</td>
      <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-pediatric-bmi.html</td>
      <td>Y</td>
      <td>Y</td>
      <td>Y</td>
      <td></td>
      <td></td>
      <td></td>
      <td>Y</td>
    </tr>  
    <tr>
      <td>Pediatric Weight Observation</td>
      <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-pediatric-weight.html</td>
      <td>Y</td>
      <td>Y</td>
      <td>Y</td>
      <td></td>
      <td></td>
      <td></td>
      <td>Y</td>
    </tr>  
    <tr>
      <td>Practitioner</td>
      <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-practitioner.html</td>
      <td>Y</td>
      <td>Y</td>
      <td>Y</td>
      <td></td>
      <td></td>
      <td></td>
      <td>Y</td>
    </tr>  
    <tr>
      <td>PractitionerRole</td>
      <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-practitionerrole.html</td>
      <td>Y</td>
      <td>Y</td>
      <td>Y</td>
      <td></td>
      <td></td>
      <td></td>
      <td>Y</td>
    </tr>  
    <tr>
      <td>Procedure</td>
      <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-procedure.html</td>
      <td>Y</td>
      <td>Y</td>
      <td>Y</td>
      <td></td>
      <td></td>
      <td></td>
      <td>Y</td>
    </tr>  
    <tr>
      <td>Provenance</td>
      <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-provenance.html</td>
      <td>Y</td>
      <td>Y</td>
      <td>Y</td>
      <td></td>
      <td></td>
      <td></td>
      <td>Y</td>
    </tr>  
    <tr>
      <td>Result Observation</td>
      <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-observationresults.html</td>
      <td>Y</td>
      <td>Y</td>
      <td>Y</td>
      <td></td>
      <td></td>
      <td></td>
      <td>Y</td>
    </tr>  
    <tr>
      <td>Smoking Status Observation</td>
      <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-smokingstatus.html</td>
      <td>Y</td>
      <td>Y</td>
      <td>Y</td>
      <td></td>
      <td></td>
      <td></td>
      <td>Y</td>
    </tr>
    <tr>
      <td>Vital Signs</td>
      <td>http://hl7.org/fhir/R4/observation-vitalsigns.html</td>
      <td>Y</td>
      <td>Y</td>
      <td>Y</td>
      <td></td>
      <td></td>
      <td></td>
      <td>Y</td>
    </tr>  

</table>


### 2. Healthcare Network Directory 

The provision of a Member-accessible Healthcare Directory API for a health plan's network **SHALL** use the profiles and other stipulations detailed in the [Validated Healthcare Directory Implementation Guide](http://build.fhir.org/ig/HL7/VhDir/index.html) (VHDir IG). The profiles defined in the VHDir IG are:

- [VhDir Care Team](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-careteam.html)
- [VhDir Endpoint](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-endpoint.html)
- [VhDir Healthcare Service](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-healthcareservice.html)
- [VhDir Insurance Plan](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-insuranceplan.html)
- [VhDir Location](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-location.html)
- [VhDir Network](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-network.html)
- [VhDir Organization](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-organization.html)
- [VhDir Organization Affiliation](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-organizationaffiliation.html)
- [VhDir Practitioner](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-practitioner.html)
- [VhDir Practitioner Role](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-practitionerrole.html)
- [VhDir Restriction](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-restriction.html)
- [VhDir Validation](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-validation.html)

#### CapabilityStatement

The [Validated Healthcare Directory Implementation Guide](http://build.fhir.org/ig/HL7/VhDir/index.html) (VHDir IG) is detailed here: [http://build.fhir.org/ig/HL7/VhDir/CapabilityStatement-vhdir-server.html](http://build.fhir.org/ig/HL7/VhDir/CapabilityStatement-vhdir-server.html)

### 3. Pharmacy Network Directory

The Pharmacy Network Directory API **SHALL** be provided as a sub-set of the Member-accessible Healthcare Directory.

#### CapabilityStatement

The Pharmacy Network Directory API can be exposed as a sub-set of the Healthcare Directory. The CapabilityStatement is detailed here: [http://build.fhir.org/ig/HL7/VhDir/CapabilityStatement-vhdir-server.html](http://build.fhir.org/ig/HL7/VhDir/CapabilityStatement-vhdir-server.html) 

### 4. Medication Formulary

When a Health Plan provides prescription drug coverage the list of covered medications is known as a "Formulary."  

The Health Plan formulary **SHALL** be provided as a Member-accessible API using the following FHIR resources:

- [CatalogEntry](https://www.hl7.org/fhir/R4/catalogentry.html)
- [US Core Device Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-device.html)
- [VhDir Healthcare Service](http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-healthcareservice.html)
- [US Core Medication Profile](https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-medication.html)

#### CapabilityStatement

The FHIR CapabilityStatement defines the resources and operations permitted on the resources exposed via the FHIR API.

The Permitted Operations for the FHIR Profiles covered in this payload section are defined as follows:

<table>
  <tr>
    <th> Resource Type </th>
    <th> Profile </th>
    <th> Read </th>
    <th> V-Read </th>
    <th> Search </th>
    <th> Update </th>
    <th> Create </th>
    <th> Updates </th>
    <th> History </th>
  </tr>
  <tr>
    <td>CatalogEntry</td>
    <td>https://www.hl7.org/fhir/R4/catalogentry.html</td>
    <td>Y</td>
    <td>Y</td>
    <td>Y</td>
    <td></td>
    <td></td>
    <td></td>
    <td>Y</td>
  </tr> 
  <tr>
    <td>Device</td>
    <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-device.html</td>
    <td>Y</td>
    <td>Y</td>
    <td>Y</td>
    <td></td>
    <td></td>
    <td></td>
    <td>Y</td>
  </tr>  
  <tr>
    <td>HealthcareService</td>
    <td>http://build.fhir.org/ig/HL7/VhDir/StructureDefinition-vhdir-healthcareservice.html</td>
    <td>Y</td>
    <td>Y</td>
    <td>Y</td>
    <td></td>
    <td></td>
    <td></td>
    <td>Y</td>
  </tr>  
  <tr>
    <td>Medication</td>
    <td>https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-medication.html</td>
    <td>Y</td>
    <td>Y</td>
    <td>Y</td>
    <td></td>
    <td></td>
    <td></td>
    <td>Y</td>
  </tr>  
 
</table>

