<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="part">part1</xsl:param>
  <xsl:output method="text"/>
  <xsl:template match="/">
    <xsl:text>XSLT&#10;</xsl:text>
    <xsl:choose>
      <xsl:when test="$part = 'part2'">
        <xsl:apply-templates select="*" mode="part2"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="*" mode="part1"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="data" mode="part1">
    <xsl:value-of select="sum(*)"/>
  </xsl:template>

  <xsl:template match="data" mode="part2">
    <xsl:apply-templates select="value[1]" mode="part2"/>
  </xsl:template>

  <xsl:template match="value" mode="part2">
    <xsl:variable name="rest">
      <xsl:choose>
        <xsl:when test="count(following-sibling::value) = 0">1</xsl:when>
        <xsl:otherwise>
          <xsl:apply-templates select="following-sibling::value[1]"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:value-of select=". * $rest"/>
  </xsl:template>
</xsl:stylesheet>