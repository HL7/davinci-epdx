<?xml version="1.0" encoding="UTF-8"?>
<!--
  - Overrides the updating of the IG in the base template to set additional parameters
  -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml" xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://hl7.org/fhir" exclude-result-prefixes="html f">
  <xsl:import href="onLoad.xslt"/>
  <xsl:param name="spreadsheetList"/>
  <xsl:template match="node()" mode="addParameters">
    <xsl:param name="extensionMode"/>
    <xsl:apply-imports>
      <xsl:with-param name="extensionMode" select="$extensionMode"/>
    </xsl:apply-imports>
    <xsl:call-template name="setParameter">
      <xsl:with-param name="code" select="'shownav'"/>
      <xsl:with-param name="system" select="$toolsSystem"/>
      <xsl:with-param name="value" select="'true'"/>
      <xsl:with-param name="supplement" select="'Y'"/>
      <xsl:with-param name="extensionMode" select="$extensionMode"/>
    </xsl:call-template>
  </xsl:template>
</xsl:stylesheet>