<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile VerificationResult
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:VerificationResult</sch:title>
    <sch:rule context="f:VerificationResult">
      <sch:assert test="count(f:target) &gt;= 1">target: minimum cardinality of 'target' is 1</sch:assert>
      <sch:assert test="count(f:need) &gt;= 1">need: minimum cardinality of 'need' is 1</sch:assert>
      <sch:assert test="count(f:statusDate) &gt;= 1">statusDate: minimum cardinality of 'statusDate' is 1</sch:assert>
      <sch:assert test="count(f:validationType) &gt;= 1">validationType: minimum cardinality of 'validationType' is 1</sch:assert>
      <sch:assert test="count(f:validationProcess) &gt;= 1">validationProcess: minimum cardinality of 'validationProcess' is 1</sch:assert>
      <sch:assert test="count(f:failureAction) &gt;= 1">failureAction: minimum cardinality of 'failureAction' is 1</sch:assert>
      <sch:assert test="count(f:attestation) &gt;= 1">attestation: minimum cardinality of 'attestation' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:VerificationResult/f:primarySource</sch:title>
    <sch:rule context="f:VerificationResult/f:primarySource">
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:VerificationResult/f:attestation</sch:title>
    <sch:rule context="f:VerificationResult/f:attestation">
      <sch:assert test="count(f:who) &gt;= 1">who: minimum cardinality of 'who' is 1</sch:assert>
      <sch:assert test="count(f:communicationMethod) &gt;= 1">communicationMethod: minimum cardinality of 'communicationMethod' is 1</sch:assert>
      <sch:assert test="count(f:date) &gt;= 1">date: minimum cardinality of 'date' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
