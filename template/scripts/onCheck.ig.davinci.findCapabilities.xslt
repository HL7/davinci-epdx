<?xml version="1.0" encoding="UTF-8"?>
<!--
  - Find all capability statements referenced by an IG.  (May include duplicates)
  -->
<xsl:stylesheet version="1.0" xmlns:f="http://hl7.org/fhir" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="f">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
  <xsl:template match="/f:ImplementationGuide">
    <capabilities>
      <xsl:for-each select="f:definition/f:resource/f:reference/f:reference[starts-with(@value, 'CapabilityStatement/')]">
        <xsl:sort select="."/>
        <xsl:variable name="url" select="concat(translate(@value, '/', '-'), '.html')"/>
        <statement>
          <xsl:attribute name="value">
            <xsl:value-of select="$url"/>
          </xsl:attribute>
        </statement>
      </xsl:for-each>
    </capabilities>
  </xsl:template>
</xsl:stylesheet>
