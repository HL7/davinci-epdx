<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ATRGroup
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Group</sch:title>
    <sch:rule context="f:Group">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-atr/StructureDefinition/atr-intended-recipient-identifier-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-atr/StructureDefinition/atr-intended-recipient-identifier-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-atr/StructureDefinition/ext-contractValidityPeriod']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-atr/StructureDefinition/ext-contractValidityPeriod': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-atr/StructureDefinition/ext-attributionListStatus']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-atr/StructureDefinition/ext-attributionListStatus': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-members-opted-out']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-members-opted-out': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Group/f:member</sch:title>
    <sch:rule context="f:Group/f:member">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-atr/StructureDefinition/atr-any-resource-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-atr/StructureDefinition/atr-any-resource-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-atr/StructureDefinition/ext-changeType']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-atr/StructureDefinition/ext-changeType': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-atr/StructureDefinition/ext-coverageReference']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-atr/StructureDefinition/ext-coverageReference': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-atr/StructureDefinition/ext-attributedProvider']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-atr/StructureDefinition/ext-attributedProvider': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-last-transmission']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-last-transmission': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-last-types']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-last-types': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-last-typefilter']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/davinci-pdex/StructureDefinition/base-ext-last-typefilter': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
