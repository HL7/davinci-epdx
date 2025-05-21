[Previous Page - Artifacts](artifacts.html)

## Other Implementation Guides

An important objective in the HL7 Da Vinci Accelerator Project is to avoid
unnecessary profile proliferation and to leverage common processes. To this end
the PDex IG leverages the profiles, extensions and operations incorporated into
other Implementation Guides.

### Implementation Guides

PDex references the following Implementation Guides:

- [US Core 3.1.1]({{site.data.fhir.ver.uscore3}})
- [US Core 6.1.0]({{site.data.fhir.ver.uscore6}})
- [Da Vinci Health Record Exchange (HRex) 1.0.0]({{site.data.fhir.ver.hrex}})
- [Da Vinci Member Attribution (ATR) 2.1.0]({{site.data.fhir.ver.atr}})
- [Da Vinci Prior Authorization Support (PAS) 2.1.0]({{site.data.fhir.ver.pas}})
- [FAST National Directory (NDH)](https://build.fhir.org/ig/HL7/fhir-us-ndh/)

Note: The FAST National Directory (NDH) IG has yet to be published. To enable PDex to leverage the profiles and extensions in the NDH IG the required Profiles, Extensions, Value Sets and Code Systems have been copied into PDex. Once the NDH IG is published it is intended that the PDex IG would remove the NDH content in a future PDex STU update and reference the FAST NDH IG directly.


### Profiles

The following profiles are referenced in this IG:

#### US Core

- [US Core 3.1.1 Profiles]({{site.data.fhir.ver.uscore3}}/profiles.html)
- [US Core 6.1.0 Profiles]({{site.data.fhir.ver.uscore6}}/profiles-and-extensions.html)
- [US Core 7.0.0 Profiles]({{site.data.fhir.ver.uscore7}}/profiles-and-extensions.html)


#### Health Record Exchange (HRex)

- [HRex Patient Demographics]({{site.data.fhir.ver.hrex}}/StructureDefinition-hrex-patient-demographics.html)
- [HRex Coverage Profile]({{site.data.fhir.ver.hrex}}/StructureDefinition-hrex-coverage.html)
- [HRex Consent Profile]({{site.data.fhir.ver.hrex}}/StructureDefinition-hrex-consent.html)
- [HRex Parameters Member Match Request Profile]({{site.data.fhir.ver.hrex}}/StructureDefinition-hrex-parameters-member-match-in.html)
- [HRex Parameters Member Match Response Profile]({{site.data.fhir.ver.hrex}}/StructureDefinition-hrex-parameters-member-match-out.html)

#### Da Vinci Member Attribution (ATR)

- [ATRGroup]({{site.data.fhir.ver.atr}}/StructureDefinition-atr-group.html)

### Operations

The following operations are referenced:

#### Health Record Exchange (HRex)

- [HRex Member Match Operation]({{site.data.fhir.ver.hrex}}/OperationDefinition-member-match.html)

#### Da Vinci Member Attribution (ATR)

**NOTE:** exportType parameter **SHALL** be populated with a value for all PDex implementations of the $Davinci-data-export-operation. 
i.e., [Provider Access API](provider-access-api.html) and [Payer-to-Payer Bulk API](payertopayerbulkexchange.html).

- [$Davinci-data-export-operation]({{site.data.fhir.ver.atr}}/OperationDefinition-davinci-data-export.html)

### IG/package dependencies

The following dependencies are used in production of this guide:

{% include dependency-table-short.xhtml %}

### Cross version analysis

{% include cross-version-analysis-inline.xhtml %}

### IP Statements

{% include ip-statements.xhtml %}

<br/>


<p><a href="PDexDownloads.html">[Next Page - Downloads]</a></p>

