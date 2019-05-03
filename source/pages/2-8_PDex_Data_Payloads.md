---
title: 2-8 PDex Data Payloads
layout: default
active: 2-8 PDex Data Payloads
---

The PDex IG defines four types of data payload:

1. Member Clinical and Claims-derived History
2. Healthcare Network Directory 
3. Pharmacy Network Directory
4. Medication Formulary

All resources available via a FHIR API endpoint **SHALL** be declared in a FHIR CapabilityStatement.

### 2-8-1 Member Clinical and Claims-derived History

The FHIR Resources that comprise the Member Clinical and Claims-derived history SHOULD include the following profiles:

#### 2-8-1-1 US Core

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

#### 2-8-1-2 Da Vinci HRex

- [ HRex Coverage](http://build.fhir.org/ig/HL7/davinci-ehrx/StructureDefinition-hrex-coverage.html)
- [HRex MedicationDispense]() **_TODO_**
- [HRex Provenance](http://build.fhir.org/ig/HL7/davinci-ehrx/StructureDefinition-hrex-provenance.html)

#### 2-8-1-3 CapabilityStatement

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


### 2-8-2 Healthcare Network Directory 

The provision of a Member-accessible Healthcare Network Directory API is detailed in the companion, subsidiary Payer Data Exchange Plan Network Implementation Guide (PDex-plan-net IG).

The Latest build of the PDex-plan-net IG can be found at: http://build.fhir.org/ig/HL7/davinci-pdex-plan-net/

### 2-8-3 Pharmacy Network Directory

The provision of a Member-accessible Pharmacy Network Directory API is detailed in the companion, subsidiary Payer Data Exchange Plan Network Implementation Guide (PDex-plan-net IG). A Health Plan's Pharmacy Network **SHALL** be expressed using the same FHIR profiles used for the Healthcare Network Directory.

The Latest build of the PDex-plan-net IG which includes the Pharmacy Network Directory can be found at: http://build.fhir.org/ig/HL7/davinci-pdex-plan-net/

### 2-8-4 Medication Formulary

When a Health Plan provides prescription drug coverage the list of covered medications is known as a "Formulary."  The provision of a Member-accessible Prescription Drug Formulary API is detailed in the companion, subsidiary Payer Data Exchange Drug Formulary Implementation Guide (PDex-formulary IG.

The Latest build of the PDex-formulary IG can be found at http://build.fhir.org/ig/HL7/davinci-pdex-formulary/
