<?xml version="1.0" encoding="UTF-8"?>
<!--
  - Checks content on the change log page
  -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:param name="location"/>
  <xsl:include href="handleIssues.xslt"/>
  <xsl:variable name="prefix" select="concat('The Change Log page (', $location, ') ')"/>
  <xsl:template match="/root">
    <xsl:for-each select="specification/version[@url and not(@code='current')]">
      <xsl:variable name="version" select="@code"/>
      <xsl:choose>
        <xsl:when test="not(/root/links/section[contains(@title, $version)])">
          <xsl:call-template name="davinciIssue">
            <xsl:with-param name="details" select="concat($prefix, 'does not include an h3 section for the version ', $version)"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
          <xsl:for-each select="/root/links/section[contains(@title, $version)]">
            <xsl:if test="count(link[contains(@value,'://jira.hl7.org/browse/FHIR-')])=0">
              <xsl:call-template name="davinciIssue">
                <xsl:with-param name="details" select="concat($prefix, 'does not include any Jira tracker items links for the section with title ', @title)"/>
              </xsl:call-template>
            </xsl:if>
          </xsl:for-each>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
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
