<?xml version="1.0" encoding="UTF-8"?>
<!--
  - Checks content on the 'how to read' page
  -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:param name="location"/>
  <xsl:include href="handleIssues.xslt"/>
  <xsl:variable name="prefix" select="concat('The How to Read page (', $location, ') ')"/>
  <xsl:template match="/root">
    <xsl:if test="count(links//link[@value='https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html'])=0">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="concat($prefix, 'should include a reference to the https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html page.')"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="count(links//link[@value='http://hl7.org/fhir/R4/overview.html'])=0">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="concat($prefix, 'should include a reference to the http://hl7.org/fhir/R4/overview.html page.')"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="count(links//link[@value='http://hl7.org/fhir/R4/overview-dev.html'])=0">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="concat($prefix, 'should include a reference to the http://hl7.org/fhir/R4/overview-dev.html page.')"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="count(links//link[@value='http://hl7.org/fhir/R4/overview-clinical.html'])=0">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="concat($prefix, 'should include a reference to the http://hl7.org/fhir/R4/overview-clinical.html page.')"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="count(links//link[@value='http://hl7.org/fhir/R4/datatypes.html'])=0">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="concat($prefix, 'should include a reference to the http://hl7.org/fhir/R4/datatypes.html page.')"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="count(links//link[@value='http://hl7.org/fhir/R4/terminologies.html'])=0">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="concat($prefix, 'should include a reference to the http://hl7.org/fhir/R4/terminologies.html page.')"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="count(links//link[@value='http://hl7.org/fhir/R4/references.html'])=0">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="concat($prefix, 'should include a reference to the http://hl7.org/fhir/R4/references.html page.')"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="count(links//link[@value='http://hl7.org/fhir/R4/formats.html'])=0">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="concat($prefix, 'should include a reference to the http://hl7.org/fhir/R4/formats.html page.')"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="count(links//link[@value='http://hl7.org/fhir/R4/resource.html'])=0">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="concat($prefix, 'should include a reference to the http://hl7.org/fhir/R4/resource.html page.')"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:for-each select="resources/resource">
      <xsl:variable name="resource" select="@value"/>
      <xsl:if test="not(preceding-sibling::resource[1]/@value=$resource)">
        <xsl:if test="count(/root/links//link[@value=concat('http://hl7.org/fhir/R4/', $resource, '.html')])=0">
          <xsl:call-template name="davinciIssue">
            <xsl:with-param name="details" select="concat($prefix, 'needs to include a reference to the http://hl7.org/fhir/R4/', $resource, '.html because this IG uses the ', $resource, ' resource.')"/>
          </xsl:call-template>
        </xsl:if>
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
