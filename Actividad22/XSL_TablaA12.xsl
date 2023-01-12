<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head></head>    
<body>
<table border="1">
<tr>
    <th colspan="6">CDs en oferta</th>
</tr>
<tr>
    <th>Titulo</th>
    <th>Artista</th>
    <th>Pais</th>
    <th>Compañia discografica</th>
    <th>Precio</th>
    <th>Año de publicación</th>
</tr>
<xsl:for-each select="CDs/CD">
<tr>
<td><xsl:value-of select="Titulo"/></td>
<td><xsl:value-of select="Artista"/></td>
<td><xsl:value-of select="Pais"/></td>
<td><xsl:value-of select="Compañia"/></td>
<td><xsl:value-of select="Precio"/></td>
<td><xsl:value-of select="Año"/></td>
</tr>

</xsl:for-each>

</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>