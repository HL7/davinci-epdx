[Previous Page - Artifacts](artifacts.html)

## Other Implementation Guides

An important objective in the HL7 Da Vinci Accelerator Project is to avoid
unnecessary profile proliferation and to leverage common processes. To this end
the PDex IG leverages the profiles, extensions and operations incorporated into
other Implementation Guides.

### Implementation Guides

PDex references the following Implementation Guides:

- [US Core 6.1.0](http://hl7.org/fhir/us/core/STU6.1/)
- [Da Vinci Health Record Exchange (HRex) 1.0.0](http://hl7.org/fhir/us/davinci-hrex/STU1/)
- [Da Vinci Prior Authorization Support (PAS) 2..00](http://hl7.org/fhir/us/davinci-pas/STU2/)
- [FAST National Directory (NDH)](https://build.fhir.org/ig/HL7/fhir-us-ndh/)

Note: The FAST National Directory (NDH) IG has yet to be published. To enable PDex to leverage the profiles and extensions in the NDH IG the required Profiles, Extensions, Value Sets and Code Systems have been copied into PDex. Once the NDH IG is published it is intended that the PDex IG would remove the NDH content in a future PDex STU update and reference the FAST NDH IG directly.


### Profiles

The following profiles are referenced in this IG:

#### US Core

- [US Core Profiles](http://hl7.org/fhir/us/core/STU6.1/profiles-and-extensions.html#profiles)

#### Health Record Exchange (HRex)

- [HRex Patient Demographics](http://hl7.org/fhir/us/davinci-hrex/STU1/StructureDefinition-hrex-patient-demographics.html)
- [HRex Coverage Profile](http://hl7.org/fhir/us/davinci-hrex/STU1/StructureDefinition-hrex-coverage.html)
- [HRex Consent Profile](http://hl7.org/fhir/us/davinci-hrex/STU1/StructureDefinition-hrex-consent.html)
- [HRex Parameters Member Match Request Profile](http://hl7.org/fhir/us/davinci-hrex/STU1/StructureDefinition-hrex-parameters-member-match-in.html)
- [HRex Parameters Member Match Response Profile](http://hl7.org/fhir/us/davinci-hrex/STU1/StructureDefinition-hrex-parameters-member-match-out.html)

### Operations

The following operations are referenced:

#### Health Record Exchange (HRex)

- [HRex Member Match Operation](http://hl7.org/fhir/us/davinci-hrex/STU1/OperationDefinition-member-match.html)


### IG/package dependencies

The following dependencies are used in production of this guide:

{% include dependency-table-short.xhtml %}

### Cross version analysis

{% include cross-version-analysis-inline.xhtml %}

### IP Statements

{% include ip-statements.xhtml %}

<br/>


<p><a href="Downloads.html">[Next Page - Downloads]</a></p>

