<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" indent="yes" />
    <xsl:template match="/">
       { "ALBUM" : {"CD":[
       <xsl:for-each select="ALBUM/CD">
          {
  "titulo" : "<xsl:value-of select="titulo" />" ,
  "Artista" : "<xsl:value-of select="Artista" />" ,
  "Pais" : "<xsl:value-of select="Pais" />" ,
  "Compania" : "<xsl:value-of select="Compania" />" ,
  "Precio" : "<xsl:value-of select="Precio" />" ,
  "anio" : "<xsl:value-of select="anio" />" ,
          }
       </xsl:for-each>
       ]}}
    </xsl:template>
</xsl:stylesheet>