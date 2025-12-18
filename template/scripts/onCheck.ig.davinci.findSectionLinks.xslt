<?xml version="1.0" encoding="UTF-8"?>
<!--
  - Find all external hyperlinks organized by the top-level section they appear in within a file
  -->
<xsl:stylesheet version="1.0" xmlns:h="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="h">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
  <xsl:template match="/h:html">
    <links>
      <section title="root">
        <xsl:for-each select="descendant::h:a[not(starts-with(@href, '#') or preceding::h:h3)]/@href">
          <xsl:sort select="."/>
          <link>
            <xsl:attribute name="value">
              <xsl:value-of select="."/>
            </xsl:attribute>
          </link>
        </xsl:for-each>
      </section>
      <xsl:for-each select="descendant::h:h3">
        <xsl:variable name="title" select="normalize-space(text())"/>
        <section title="{$title}">
          <xsl:for-each select="following::h:a[not(starts-with(@href, '#')) and normalize-space(preceding::h:h3[1]/text())=$title]/@href">
            <xsl:sort select="."/>
            <link>
              <xsl:attribute name="value">
                <xsl:value-of select="."/>
              </xsl:attribute>
            </link>
          </xsl:for-each>
          <xsl:for-each select="following::comment()[normalize-space(preceding::h:h3[1]/text())=$title]">
            <comment>
              <xsl:attribute name="value">
                <xsl:value-of select="."/>
              </xsl:attribute>
            </comment>
          </xsl:for-each>
        </section>
      </xsl:for-each>
    </links>
  </xsl:template>
</xsl:stylesheet>
