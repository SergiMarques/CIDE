<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="text" media-type="application/json" encoding="UTF-8"/>

  <xsl:template match="/">
    <xsl:text>{ "CDs": [ </xsl:text>
    <xsl:apply-templates select="//CD"/>
    <xsl:text> ] }</xsl:text>
  </xsl:template>
  
  <xsl:template match="CD">
    <xsl:text>{ "Titulo": "</xsl:text>
    <xsl:value-of select="Titulo"/>
    <xsl:text>", "Artista": "</xsl:text>
    <xsl:value-of select="Artista"/>
    <xsl:text>", "Pais": "</xsl:text>
    <xsl:value-of select="Pais"/>
    <xsl:text>", "Compania": "</xsl:text>
    <xsl:value-of select="Compañia"/>
    <xsl:text>", "Precio": </xsl:text>
    <xsl:value-of select="Precio"/>
    <xsl:text>, "Anio": </xsl:text>
    <xsl:value-of select="Año"/>
    <xsl:text> }</xsl:text>
    <xsl:if test="position()!=last()">
      <xsl:text>, </xsl:text>
    </xsl:if>
  </xsl:template>
  
</xsl:stylesheet>
