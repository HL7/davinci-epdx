<?xml version="1.0" encoding="UTF-8"?>
<!--
  - Checks content on the project page
  -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:param name="location"/>
  <xsl:include href="handleIssues.xslt"/>
  <xsl:variable name="prefix" select="concat('The Project page (', $location, ') ')"/>
  <xsl:template match="/links">
    <xsl:choose>
      <xsl:when test="count(section[@title='Da Vinci'])=0">
        <xsl:call-template name="davinciIssue">
          <xsl:with-param name="details" select="concat($prefix, 'should include a section called ^Da Vinci^ (which includes the shared davinci.md file).')"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:for-each select="section[@title='Da Vinci']">
          <xsl:if test="count(link[@value='https://www.hl7.org/about/davinci/index.cfm'])=0">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="concat($prefix, 'should include a reference to the HL7 Da Vinci page.  Just do  % include davinci.md.')"/>
            </xsl:call-template>
          </xsl:if>
          <xsl:if test="count(link[contains(@value, 'davinci-guiding-principles.html')])=0">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="concat($prefix, 'should include a reference to the Da Vinci guiding principles.  Just do  % include davinci.md.')"/>
            </xsl:call-template>
          </xsl:if>
          <xsl:if test="count(link[@value='https://confluence.hl7.org/display/DVP'])=0">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="concat($prefix, 'should include a reference to the Da Vinci guiding principles.  Just do  % include davinci.md.')"/>
            </xsl:call-template>
          </xsl:if>
        </xsl:for-each>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:choose>
      <xsl:when test="count(section[starts-with(@title, 'The Da Vinci ') and substring(@title, string-length(@title)-7)=' project'])=0">
        <xsl:call-template name="davinciIssue">
          <xsl:with-param name="details" select="concat($prefix, 'should include a section called ^The Da Vinci [Something] project^.')"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:for-each select="section[starts-with(@title, 'The Da Vinci ') and substring(@title, string-length(@title)-7)=' project']">
          <xsl:if test="count(link[starts-with(@value,'https://confluence.hl7.org/')])=0">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="concat($prefix, 'project section should include a reference to the project confluence page.')"/>
            </xsl:call-template>
          </xsl:if>
        </xsl:for-each>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:if test="count(section[@title='Credits'])=0">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="concat($prefix, 'should include a section called ^Credits^.')"/>
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
