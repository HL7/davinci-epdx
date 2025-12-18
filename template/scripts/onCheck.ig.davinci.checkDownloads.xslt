<?xml version="1.0" encoding="UTF-8"?>
<!--
  - Checks content on the downloads page
  -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:param name="location"/>
  <xsl:include href="handleIssues.xslt"/>
  <xsl:variable name="prefix" select="concat('The Downloads page (', $location, ') ')"/>
  <xsl:template match="/links">
    <xsl:if test="count(descendant::link[@value='http://hl7.org/fhir/R4/downloads.html'])=0">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="concat($prefix, 'must include a link to the core specification downloads page - http://hl7.org/fhir/R4/downloads.html')"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="count(descendant::link[@value='http://hl7.org/fhir/R4/fhir-spec.zip'])=0">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="concat($prefix, 'must include a link to download the text of the FHIR core spec - http://hl7.org/fhir/R4/fhir-spec.zip')"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="count(descendant::link[@value='full-ig.zip'])=0">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="concat($prefix, 'must include a link to the full content of this IG: full-ig.zip')"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="count(descendant::link[@value='https://fhir.github.io/latest-ig-validator/org.hl7.fhir.validator.jar'])=0">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="concat($prefix, 'must include a link to the current version of the FHIR validator - https://fhir.github.io/latest-ig-validator/org.hl7.fhir.validator.jar')"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="count(descendant::link[@value='https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator'])=0">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="concat($prefix, 'must include a link to the Confluence instructions for the FHIR validator - https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator')"/>
      </xsl:call-template>
    </xsl:if>
    
    <!--
TODO:
HTML content of any ancestor IGs

-->
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
