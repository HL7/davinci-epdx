<?xml version="1.0" encoding="UTF-8"?>
<!--
  - Find all resources referenced by an IG.  (May include duplicates)
  -->
<xsl:stylesheet version="1.0" xmlns:f="http://hl7.org/fhir" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="f">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
  <xsl:template match="/f:ImplementationGuide">
    <resources>
      <xsl:for-each select="f:definition/f:resource/f:extension[@url='http://hl7.org/fhir/tools/StructureDefinition/resource-information']/f:valueString/@value">
        <xsl:sort select="."/>
        <xsl:variable name="resource">
          <xsl:choose>
            <xsl:when test="contains(., ':')">
              <xsl:value-of select="substring-before(., ':')"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="."/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:variable>
        <resource>
          <xsl:attribute name="value">
            <xsl:value-of select="translate($resource, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz')"/>
          </xsl:attribute>
        </resource>
      </xsl:for-each>
    </resources>
  </xsl:template>
</xsl:stylesheet>
