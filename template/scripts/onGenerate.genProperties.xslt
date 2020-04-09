<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:f="http://hl7.org/fhir" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" encoding="UTF-8"/>
	<xsl:template match="f:ImplementationGuide">
    <xsl:variable name="id" select="f:id/@value"/>
    <xsl:variable name="org" select="substring-before($id, '.')"/>
    <xsl:variable name="family" select="substring-before(substring-after($id, '.'), '.')"/>
    <xsl:variable name="realm">
      <xsl:if test="contains(substring-after($id, concat($family, '.')), '.')">
        <xsl:value-of select="substring-before(substring-after($id, concat($family, '.')), '.')"/>
      </xsl:if>
    </xsl:variable>
    <xsl:variable name="code">
      <xsl:choose>
        <xsl:when test="$realm!=''">
          <xsl:value-of select="substring-after($id, concat($realm, '.'))"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="substring-after($id, concat($family, '.'))"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:if test="not($org='hl7')">
      <xsl:message terminate="yes">
        <xsl:value-of select="concat('When using the HL7 template, the IG id must start with &quot;hl7.&quot; - found ', $id)"/>
      </xsl:message>
    </xsl:if>
    <xsl:if test="not($family='cda' or $family='ehrfm' or $family='fhir' or $family='v2' or $family='v3' or $family='other')">
      <xsl:message terminate="yes">
        <xsl:value-of select="concat('Unrecognized family in id: ', $id)"/>
      </xsl:message>
    </xsl:if>
    <xsl:if test="not($realm='us' or $realm='uv')">
      <xsl:message terminate="yes">
        <xsl:value-of select="concat('Unrecognized realm in id: ', $id)"/>
      </xsl:message>
    </xsl:if>
    <xsl:text>jiraSpecFile:</xsl:text>
    <xsl:value-of select="translate($family, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
    <xsl:choose>
      <xsl:when test="$realm='us'">-us-</xsl:when>
      <xsl:otherwise>-</xsl:otherwise>
    </xsl:choose>
    <xsl:value-of select="$code"/>
  </xsl:template>
</xsl:stylesheet>
