<?xml version="1.0" encoding="UTF-8"?>
<!--
  - Finds the names of output files whose links need to be checked
  -->
<xsl:stylesheet version="1.0" xmlns:h="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" encoding="UTF-8"/>
	<xsl:template match="/">
    <xsl:for-each select="//h:a[normalize-space(text())='Reading this IG']">
      <xsl:call-template name="property">
        <xsl:with-param name="name" select="'reading'"/>
      </xsl:call-template>
    </xsl:for-each>
    <xsl:for-each select="//h:a[normalize-space(text())='Project and Participants']">
      <xsl:call-template name="property">
        <xsl:with-param name="name" select="'project'"/>
      </xsl:call-template>
    </xsl:for-each>
    <xsl:for-each select="//h:a[normalize-space(text())='Conformance Expectations']">
      <xsl:call-template name="property">
        <xsl:with-param name="name" select="'conformance'"/>
      </xsl:call-template>
    </xsl:for-each>
    <xsl:for-each select="//h:a[normalize-space(text())='Privacy, Safety, and Security']">
      <xsl:call-template name="property">
        <xsl:with-param name="name" select="'security'"/>
      </xsl:call-template>
    </xsl:for-each>
    <xsl:for-each select="//h:a[normalize-space(text())='Downloads']">
      <xsl:call-template name="property">
        <xsl:with-param name="name" select="'downloads'"/>
      </xsl:call-template>
    </xsl:for-each>
    <xsl:for-each select="//h:a[normalize-space(text())='Change Log']">
      <xsl:call-template name="property">
        <xsl:with-param name="name" select="'change'"/>
      </xsl:call-template>
    </xsl:for-each>
	</xsl:template>
	<xsl:template name="property">
    <xsl:param name="name"/>
    <xsl:variable name="ref">
      <xsl:choose>
        <xsl:when test="contains(@href, '{{site.data.info.assets}}')">
          <xsl:value-of select="substring-after(@href, '{{site.data.info.assets}}')"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="@href"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:value-of select="concat($name, '_file=', $ref, '&#xa;')"/>
 	</xsl:template>
</xsl:stylesheet>
