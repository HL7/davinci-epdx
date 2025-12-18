<?xml version="1.0" encoding="UTF-8"?>
<!--
  - Checks content on the security & privacy page
  -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:param name="location"/>
  <xsl:include href="handleIssues.xslt"/>
  <xsl:variable name="prefix" select="concat('The Security page (', $location, ') ')"/>
  <xsl:template match="/links">
    <xsl:if test="count(descendant::link[(contains(@value,'://hl7.org/fhir/us/davinci-hrex/') or contains(@value,'://build.fhir.org/ig/HL7/davinci-ehrx/')) and contains(@value, 'security.html')])=0">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="concat($prefix, 'must include a reference to the HRex security.html page (with a SHALL comply).')"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="count(descendant::link[contains(@value,'://hl7.org/fhir/R4/security.html')])=0">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="concat($prefix, 'should include a reference to the HL7 core security page (http://hl7.org/fhir/R4/security.html).')"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template name="davinciIssue">
    <xsl:param name="details"/>
    <xsl:call-template name="raiseIssue">
      <xsl:with-param name="severity">warning</xsl:with-param>
      <xsl:with-param name="code">business-rule</xsl:with-param>
      <xsl:with-param name="details" select="concat('DA VINCI: ', $details)"/>
    </xsl:call-template>
  </xsl:template>
</xsl:stylesheet>
