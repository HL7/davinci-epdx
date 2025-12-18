<?xml version="1.0" encoding="UTF-8"?>
<!--
  - Checks content on the conformance page
  -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:param name="location"/>
  <xsl:include href="handleIssues.xslt"/>
  <xsl:variable name="prefix" select="concat('The Conformance page (', $location, ') ')"/>
  <xsl:template match="/root">
    <xsl:if test="not(links//link[contains(@value,'://hl7.org/fhir/R4/conformance-rules.html#conflang')])">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="concat($prefix, 'must include a reference to the FHIR core conformance language page - http://hl7.org/fhir/R4/conformance-rules.html#conflang.')"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="not(descendant::link[(contains(@value,'://hl7.org/fhir/us/davinci-hrex/') or contains(@value,'://build.fhir.org/ig/HL7/davinci-ehrx/')) and substring(@value, string-length(@value)-16)='/conformance.html'])">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="concat($prefix, 'needs to include a link to the HRex conformance.html page.')"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:choose>
      <xsl:when test="count(links/section[@title='MustSupport'])=0">
        <xsl:call-template name="davinciIssue">
          <xsl:with-param name="details" select="concat($prefix, 'should include an h3 section titled MustSupport.')"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:for-each select="links/section[@title='MustSupport']">
          <xsl:if test="not(link[(contains(@value,'://hl7.org/fhir/us/davinci-hrex/') or contains(@value,'://build.fhir.org/ig/HL7/davinci-ehrx/')) and contains(@value, 'conformance.html#mustsupport')])">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="concat($prefix, 'Must Support section needs to include a link to the HRex conformance.html#mustsupport section.')"/>
            </xsl:call-template>
          </xsl:if>
          <xsl:if test="not(link[contains(@value,'://hl7.org/fhir/us/core/') and contains(@value, 'must-support.html')])">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="concat($prefix, 'Must Support section needs to include a link to the US-Core must-support.html page.')"/>
            </xsl:call-template>
          </xsl:if>
        </xsl:for-each>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:for-each select="capabilities/statement">
      <xsl:variable name="url" select="@value"/>
      <xsl:if test="not(/root/links//link[@value=$url])">
        <xsl:call-template name="davinciIssue">
          <xsl:with-param name="details" select="concat($prefix, 'must include a link to each CapabilityStatement defined in the IG.  It is missing a link to ', $url)"/>
        </xsl:call-template>
      </xsl:if>
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
