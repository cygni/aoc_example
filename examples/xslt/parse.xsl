<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/input">
    <data>
      <xsl:call-template name="lines">
        <xsl:with-param name="rest" select="."/>
      </xsl:call-template>
    </data>
  </xsl:template>

  <xsl:template name="lines">
    <xsl:param name="rest"/>
    <xsl:if test="$rest">
      <value><xsl:value-of select="substring-before($rest, '&#10;')"/></value>
      <xsl:call-template name="lines">
        <xsl:with-param name="rest" select="substring-after($rest, '&#10;')"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>