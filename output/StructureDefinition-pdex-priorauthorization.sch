<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ExplanationOfBenefit
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ExplanationOfBenefit</sch:title>
    <sch:rule context="f:ExplanationOfBenefit">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/extension-levelOfServiceCode']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/extension-levelOfServiceCode': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:preAuthRefPeriod) &lt;= 1">preAuthRefPeriod: maximum cardinality of 'preAuthRefPeriod' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ExplanationOfBenefit/f:meta</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:meta">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:versionId) &lt;= 1">versionId: maximum cardinality of 'versionId' is 1</sch:assert>
      <sch:assert test="count(f:lastUpdated) &lt;= 1">lastUpdated: maximum cardinality of 'lastUpdated' is 1</sch:assert>
      <sch:assert test="count(f:source) &lt;= 1">source: maximum cardinality of 'source' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ExplanationOfBenefit/f:item</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:item">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-itemPreAuthIssueDate']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-itemPreAuthIssueDate': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-itemPreAuthPeriod']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-itemPreAuthPeriod': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-authorizationNumber']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-authorizationNumber': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-administrationReferenceNumber']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-administrationReferenceNumber': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-itemAuthorizedDetail']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-itemAuthorizedDetail': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ExplanationOfBenefit/f:item/f:adjudication</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:item/f:adjudication">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/extension-reviewAction']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/extension-reviewAction': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:amount) &gt;= 1">amount: minimum cardinality of 'amount' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:reason) &gt;= 1">reason: minimum cardinality of 'reason' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ExplanationOfBenefit/f:adjudication</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:adjudication">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/extension-reviewAction']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/extension-reviewAction': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:category) &gt;= 1">category: minimum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:category) &lt;= 1">category: maximum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:reason) &lt;= 1">reason: maximum cardinality of 'reason' is 1</sch:assert>
      <sch:assert test="count(f:amount) &lt;= 1">amount: maximum cardinality of 'amount' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:category) &gt;= 1">category: minimum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:category) &lt;= 1">category: maximum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:reason) &lt;= 1">reason: maximum cardinality of 'reason' is 1</sch:assert>
      <sch:assert test="count(f:amount) &gt;= 1">amount: minimum cardinality of 'amount' is 1</sch:assert>
      <sch:assert test="count(f:amount) &lt;= 1">amount: maximum cardinality of 'amount' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ExplanationOfBenefit/f:total</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:total">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/PriorAuthorizationUtilization']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/PriorAuthorizationUtilization': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
