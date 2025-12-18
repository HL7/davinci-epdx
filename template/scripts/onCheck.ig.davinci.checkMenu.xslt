<?xml version="1.0" encoding="UTF-8"?>
<!--
  - Checks that the menu meets Da Vinci best practice rules
  -->
<xsl:stylesheet version="1.0" xmlns:h="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="h">
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:include href="handleIssues.xslt"/>
  <xsl:template match="/h:ul">
    <!-- No ToC link -->
    <xsl:if test="//*[h:a[@href='toc.html']]">
      <xsl:call-template name="davinciIssue">
        <xsl:with-param name="details" select="'The main menu should not include a reference to toc.html.  The table of contents is only referenced in the breadcrumbs bar, not the menu.'"/>
      </xsl:call-template>
    </xsl:if>
    <!-- Check home link -->
    <xsl:for-each select="h:li[1]">
      <xsl:choose>
        <xsl:when test="h:a/text()!='IG Home'">
          <xsl:call-template name="davinciIssue">
            <xsl:with-param name="details" select="'The first menu item should have the label IG Home.'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
          <xsl:if test="not(contains(h:a/@href,'index.html'))">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="'The first menu item should be a link to the home page (index.html).'"/>
            </xsl:call-template>
          </xsl:if>
          <xsl:if test="@class!=''">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="'The first menu item (IG Home) should not have a defined class.'"/>
            </xsl:call-template>
          </xsl:if>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
    <!-- Check background link-->
    <xsl:for-each select="h:li[2]">
      <xsl:choose>
        <xsl:when test="not(h:a[normalize-space(text())='Background'])">
          <xsl:call-template name="davinciIssue">
            <xsl:with-param name="details" select="'The second menu item should have the label Background.'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
          <xsl:if test="h:a/h:b/@class!='caret'">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="'The second menu item needs a carret indicating it is a dropdown.'"/>
            </xsl:call-template>
          </xsl:if>
          <xsl:if test="self::*[@class!='dropdown' or count(h:a[@class='dropdown-toggle' and @data-toggle='dropdown' and @href='#'])!=1 or count(h:ul[@class='dropdown-menu']/h:li)=0]">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="'The second menu item (Background) must be a dropdown menu with children.'"/>
            </xsl:call-template>
          </xsl:if>
          <!-- How to read -->
          <xsl:for-each select="h:ul/h:li[1]">
            <xsl:if test="not(h:a[normalize-space(text())='Reading this IG'])">
              <xsl:call-template name="davinciIssue">
                <xsl:with-param name="details" select="'The first menu item under Background should have the label Reading this IG.'"/>
              </xsl:call-template>
            </xsl:if>
          </xsl:for-each>
          <!-- Use Cases -->
          <xsl:for-each select="h:ul/h:li[2]">
            <xsl:if test="not(h:a[normalize-space(text())='Use Cases'])">
              <xsl:call-template name="davinciIssue">
                <xsl:with-param name="details" select="'The second menu item under Background should have the label Use Cases.'"/>
              </xsl:call-template>
            </xsl:if>
          </xsl:for-each>
          <!-- Project & Participants -->
          <xsl:if test="not(h:ul/h:li/h:a[normalize-space(text())='Project and Participants'])">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="'There must be a menu item under Background called Project and Participants.'"/>
            </xsl:call-template>
          </xsl:if>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
    <!-- Check specification link-->
    <xsl:for-each select="h:li[3]">
      <xsl:choose>
        <xsl:when test="not(h:a[normalize-space(text())='Specification'])">
          <xsl:call-template name="davinciIssue">
            <xsl:with-param name="details" select="'The third menu item should have the label Specification.'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
          <xsl:if test="h:a/h:b/@class!='caret'">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="'The third menu item needs a carret indicating it is a dropdown.'"/>
            </xsl:call-template>
          </xsl:if>
          <xsl:if test="self::*[@class!='dropdown' or count(h:a[@class='dropdown-toggle' and @data-toggle='dropdown' and @href='#'])!=1 or count(h:ul[@class='dropdown-menu']/h:li)=0]">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="'The third menu item (Specification) must be a dropdown menu with children.'"/>
            </xsl:call-template>
          </xsl:if>
          <!-- Conformance Expectations -->
          <xsl:for-each select="h:ul/h:li[1]">
            <xsl:if test="not(h:a[normalize-space(text())='Conformance Expectations'])">
              <xsl:call-template name="davinciIssue">
                <xsl:with-param name="details" select="'The first menu item under Specification should have the label Conformance Expectations.'"/>
              </xsl:call-template>
            </xsl:if>
          </xsl:for-each>
          <!-- Privacy, Safety, and Security -->
          <xsl:if test="not(h:ul/h:li[h:a[normalize-space(text())='Privacy, Safety, and Security']])">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="'The Specification menu must have an item with the label Privacy, Safety, and Security.'"/>
            </xsl:call-template>
          </xsl:if>
          <!-- Other pages -->
          <xsl:if test="count(h:ul/h:li)&lt;3">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="'The Specification menu must have at least one item beyond the standard Conformance Expectations and Privacy, Safety, and Security items.'"/>
            </xsl:call-template>
          </xsl:if>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
    <!-- Check artifacts link-->
    <xsl:choose>
      <xsl:when test="count(h:li/h:a[normalize-space(text())='FHIR Artifacts'])=0">
        <xsl:call-template name="davinciIssue">
          <xsl:with-param name="details" select="'There must be a menu item with the label FHIR Artifacts.'"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:for-each select="h:li[h:a[normalize-space(text())='FHIR Artifacts']]">
          <xsl:if test="count(descendant::h:a[contains(@href,'artifacts.html')])&lt;1">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="'The FHIR Artifacts menu item must either link directly to the artifacts.html page, or one of the child menu items needs to.'"/>
            </xsl:call-template>
          </xsl:if>
        </xsl:for-each>
      </xsl:otherwise>
    </xsl:choose>
    <!-- Check Base Specs link-->
    <xsl:choose>
      <xsl:when test="count(h:li/h:a[normalize-space(text())='Base Specs'])=0">
        <xsl:call-template name="davinciIssue">
          <xsl:with-param name="details" select="'There must be a menu item with the label Base Specs.'"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:for-each select="h:li[h:a[normalize-space(text())='Base Specs']]">
          <xsl:if test="h:a/h:b/@class!='caret'">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="'The Base Specs menu item needs a carret indicating it is a dropdown.'"/>
            </xsl:call-template>
          </xsl:if>
          <xsl:if test="self::*[@class!='dropdown' or count(h:a[@class='dropdown-toggle' and @data-toggle='dropdown' and @href='#'])!=1 or count(h:ul[@class='dropdown-menu']/h:li)=0]">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="'The Base Specs menu item must be a dropdown menu with children.'"/>
            </xsl:call-template>
          </xsl:if>
          <!-- FHIR Core -->
          <xsl:if test="count(h:ul/h:li/h:a[(normalize-space(text())='FHIR R4 Spec')])=0">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="'The Base Specs menu item must have a child called FHIR R4 Spec'"/>
            </xsl:call-template>
          </xsl:if>
          <!-- HRex link -->
          <xsl:if test="count(h:ul/h:li/h:a[(normalize-space(text())='HRex 1.1.0')])=0">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="'The Base Specs menu item must have a child called HRex 1.1.0.'"/>
            </xsl:call-template>
          </xsl:if>
          <!-- US Core links -->
          <xsl:if test="count(h:ul/h:li/h:a[(normalize-space(text())='US Core 3.1.1')])=0">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="'The Base Specs menu item must have a child called US Core 3.1.1.'"/>
            </xsl:call-template>
          </xsl:if>
          <xsl:if test="count(h:ul/h:li/h:a[(normalize-space(text())='US Core 6.1.0')])=0">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="'The Base Specs menu item must have a child called US Core 6.1.0.'"/>
            </xsl:call-template>
          </xsl:if>
          <xsl:if test="count(h:ul/h:li/h:a[(normalize-space(text())='US Core 7.0.0')])=0">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="'The Base Specs menu item must have a child called US Core 7.0.0.'"/>
            </xsl:call-template>
          </xsl:if>
        </xsl:for-each>
      </xsl:otherwise>
    </xsl:choose>
    <!-- Check Support link-->
    <xsl:choose>
      <xsl:when test="count(h:li/h:a[normalize-space(text())='Support'])=0">
        <xsl:call-template name="davinciIssue">
          <xsl:with-param name="details" select="'There must be a menu item with the label Support.'"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:for-each select="h:li[h:a[normalize-space(text())='Support']]">
          <xsl:if test="h:a/h:b/@class!='caret'">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="'The Support menu item needs a carret indicating it is a dropdown.'"/>
            </xsl:call-template>
          </xsl:if>
          <xsl:if test="self::*[@class!='dropdown' or count(h:a[@class='dropdown-toggle' and @data-toggle='dropdown' and @href='#'])!=1 or count(h:ul[@class='dropdown-menu']/h:li)=0]">
            <xsl:call-template name="davinciIssue">
              <xsl:with-param name="details" select="'The Support menu item must be a dropdown menu with children.'"/>
            </xsl:call-template>
          </xsl:if>
          <!-- Discussion Forum -->
          <xsl:choose>
            <xsl:when test="count(h:ul/h:li/h:a[(normalize-space(text())='Discussion Forum')])=0">
              <xsl:call-template name="davinciIssue">
                <xsl:with-param name="details" select="'The Support menu item must have a child called Discussion Forum.'"/>
              </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
              <xsl:for-each select="h:ul/h:li/h:a[(normalize-space(text())='Discussion Forum')]">
                <xsl:if test="not(starts-with(@href, 'https://chat.fhir.org/#narrow/stream/') or starts-with(@href, 'https://chat.fhir.org/#narrow/channel/'))">
                  <xsl:call-template name="davinciIssue">
                    <xsl:with-param name="details" select="'The Discussion Forum link must start with https://chat.fhir.org/#narrow/stream/' or '.../channel/'"/>
                  </xsl:call-template>
                </xsl:if>
              </xsl:for-each>
            </xsl:otherwise>
          </xsl:choose>
          <!-- Project Page -->
          <xsl:choose>
            <xsl:when test="count(h:ul/h:li/h:a[(normalize-space(text())='Project Page')])=0">
              <xsl:call-template name="davinciIssue">
                <xsl:with-param name="details" select="'The Support menu item must have a child called Project Page.'"/>
              </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
              <xsl:for-each select="h:ul/h:li/h:a[(normalize-space(text())='Project Page')]">
                <xsl:if test="not(starts-with(@href, 'https://confluence.hl7.org/'))">
                  <xsl:call-template name="davinciIssue">
                    <xsl:with-param name="details" select="'The Project Page link must start with https://confluence.hl7.org/'"/>
                  </xsl:call-template>
                </xsl:if>
              </xsl:for-each>
            </xsl:otherwise>
          </xsl:choose>
          <!-- Implementer Support -->
          <xsl:choose>
            <xsl:when test="count(h:ul/h:li/h:a[(normalize-space(text())='Implementer Support')])=0">
              <xsl:call-template name="davinciIssue">
                <xsl:with-param name="details" select="'The Support menu item must have a child called Implementer Support.'"/>
              </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
              <xsl:for-each select="h:ul/h:li/h:a[(normalize-space(text())='Implementer Support')]">
                <xsl:if test="not(starts-with(@href, 'https://confluence.hl7.org/'))">
                  <xsl:call-template name="davinciIssue">
                    <xsl:with-param name="details" select="'The Implementer Support link must start with https://confluence.hl7.org/'"/>
                  </xsl:call-template>
                </xsl:if>
              </xsl:for-each>
            </xsl:otherwise>
          </xsl:choose>
          <!-- Jira Dashboard -->
          <xsl:choose>
            <xsl:when test="count(h:ul/h:li/h:a[(normalize-space(text())='Specification Dashboard')])=0">
              <xsl:call-template name="davinciIssue">
                <xsl:with-param name="details" select="'The Support menu item must have a child called Specification Dashboard.'"/>
              </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
              <xsl:for-each select="h:ul/h:li/h:a[(normalize-space(text())='Specification Dashboard')]">
                <xsl:if test="not(starts-with(@href, 'https://jira.hl7.org/secure/Dashboard.jspa?selectPageId='))">
                  <xsl:call-template name="davinciIssue">
                    <xsl:with-param name="details" select="'The Specification Dashboard link must start with https://jira.hl7.org/secure/Dashboard.jspa?selectPageId='"/>
                  </xsl:call-template>
                </xsl:if>
              </xsl:for-each>
            </xsl:otherwise>
          </xsl:choose>
          <!-- Propose a Change -->
          <xsl:choose>
            <xsl:when test="count(h:ul/h:li/h:a[(normalize-space(text())='Propose a Change')])=0">
              <xsl:call-template name="davinciIssue">
                <xsl:with-param name="details" select="'The Support menu item must have a child called Propose a Change.'"/>
              </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
              <xsl:for-each select="h:ul/h:li/h:a[(normalize-space(text())='Propose a Change')]">
                <xsl:if test="not(starts-with(@href, 'https://jira.hl7.org/secure/CreateIssueDetails!init.jspa?pid=10405&amp;issuetype=10600&amp;customfield_11302='))">
                  <xsl:call-template name="davinciIssue">
                    <xsl:with-param name="details" select="'The Propose a Change link must start with https://jira.hl7.org/secure/CreateIssueDetails!init.jspa?pid=10405&amp;issuetype=10600&amp;customfield_11302='"/>
                  </xsl:call-template>
                </xsl:if>
              </xsl:for-each>
            </xsl:otherwise>
          </xsl:choose>
          <!-- Downloads -->
          <xsl:choose>
            <xsl:when test="count(h:ul/h:li/h:a[(normalize-space(text())='Downloads')])=0">
              <xsl:call-template name="davinciIssue">
                <xsl:with-param name="details" select="'The Support menu item must have a child called Downloads.'"/>
              </xsl:call-template>
            </xsl:when>
          </xsl:choose>
        </xsl:for-each>
      </xsl:otherwise>
    </xsl:choose>
    <!-- Check Change Log -->
    <xsl:choose>
      <xsl:when test="count(h:li/h:a[normalize-space(text())='Change Log'])=0">
        <xsl:call-template name="davinciIssue">
          <xsl:with-param name="details" select="'There must be a menu item with the label Change Log.'"/>
        </xsl:call-template>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  <!--
    - Shared templates
    -->
  <xsl:template name="davinciIssue">
    <xsl:param name="details"/>
    <xsl:call-template name="raiseIssue">
      <xsl:with-param name="severity">warning</xsl:with-param>
      <xsl:with-param name="code">business-rule</xsl:with-param>
      <xsl:with-param name="details" select="concat('DA VINCI: ', $details)"/>
      <xsl:with-param name="location">
        <xsl:call-template name="findLocation"/>
      </xsl:with-param>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="findLocation">
    <xsl:variable name="parent">
      <xsl:for-each select="ancestor::h:li[1]">
        <xsl:call-template name="findLocation"/>
      </xsl:for-each>
    </xsl:variable>
    <xsl:if test="$parent!=''">
      <xsl:value-of select="concat($parent, '.')"/>
    </xsl:if>
    <xsl:value-of select="concat('ul.li[', count(preceding-sibling::h:li), ']')"/>
  </xsl:template>
</xsl:stylesheet>
