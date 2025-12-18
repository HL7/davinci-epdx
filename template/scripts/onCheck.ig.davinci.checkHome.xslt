<?xml version="1.0" encoding="UTF-8"?>
<!--
  - Checks content on the home page
  -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:include href="handleIssues.xslt"/>
  <xsl:variable name="prefix" select="'The home page (index.html) '"/>
  <xsl:template match="/links">
    <xsl:if test="count(section[@title='Content and Organization'])=0">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="concat($prefix, 'must include an h3 section called Content and Organization.')"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:choose>
      <xsl:when test="count(section[@title='Dependencies'])=0">
        <xsl:call-template name="davinciIssue">
          <xsl:with-param name="details" select="concat($prefix, 'must include an h3 section called Dependencies.')"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:for-each select="section[@title='Dependencies']">
          <xsl:if test="not(comment[@value='$$3$$'])">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="concat($prefix, 'Dependency section must include a reference to one of the standard dependency tables.  (Preference is to include dependency-table-nontech.xhtml).')"/>
            </xsl:call-template>
          </xsl:if>
        </xsl:for-each>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:choose>
      <xsl:when test="count(section[@title='Intellectual Property Considerations'])=0">
        <xsl:call-template name="davinciIssue">
          <xsl:with-param name="details" select="concat($prefix, 'must include an h3 section called Intellectual Property Considerations.')"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:for-each select="section[@title='Intellectual Property Considerations']">
          <xsl:if test="not(comment[@value='$$1$$'])">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="concat($prefix, 'Dependency section must include a reference to the standard IP dependency table.  Do an include on ip-statements.xhtml.')"/>
            </xsl:call-template>
          </xsl:if>
        </xsl:for-each>
      </xsl:otherwise>
    </xsl:choose>
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
