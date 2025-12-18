<?xml version="1.0" encoding="UTF-8"?>
<!--
  - Checks Da Vinci best-practice rules against content in the IG resource
  -->
<xsl:stylesheet version="1.0" xmlns:f="http://hl7.org/fhir" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="f">
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:include href="handleIssues.xslt"/>
  <xsl:template match="/f:ImplementationGuide">
    <xsl:if test="not(f:definition/f:resource/f:reference/f:reference[starts-with(@value, 'CapabilityStatement')])">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="'Da Vinci IGs SHOULD define CapabilityStatements.  Without CapabilityStatements, there is no technical way to declare conformance to the IG.'"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="not(f:dependsOn[f:packageId/@value='hl7.fhir.us.davinci-hrex'])">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="'This IG does not depend on HRex.  Either add a formal dependency or confirm that a textual dependency has been declared.'"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="not(f:dependsOn[f:packageId/@value='hl7.fhir.us.core' and f:version/@value='7.0.0'])">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="'This IG does not include an explicit dependency on US Core 7.0.0.'"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="not(f:dependsOn[f:packageId[@value='hl7.fhir.us.core' or @value='hl7.fhir.us.core.v610'] and f:version/@value='6.1.0'])">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="'This IG does not include an explicit dependency on US Core 6.1.0.'"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="not(f:dependsOn[f:packageId[@value='hl7.fhir.us.core' or @value='hl7.fhir.us.core.v311'] and f:version/@value='3.1.1'])">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="'This IG does not include an explicit dependency on US Core 3.1.1.'"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="not(f:definition/f:extension[@url='http://hl7.org/fhir/tools/StructureDefinition/ig-parameter' and f:extension[@url='code']/f:valueString/@value='shownav' and f:extension[@url='value']/f:valueString/@value='true'])">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="'Must have the IG parameter shownav=true (which is the default for Da Vinci, so remove the override setting it to false).'"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <!--
    - Shared templates
    -->
  <xsl:template name="davinciIssue">
    <xsl:param name="details"/>
    <xsl:call-template name="raiseIssue">
      <xsl:with-param name="severity">warning</xsl:with-param>
      <xsl:with-param name="code">business-rule</xsl:with-param>
      <xsl:with-param name="details" select="concat('DA VINCI: ', $details)"/>
    </xsl:call-template>
  </xsl:template>
</xsl:stylesheet>
