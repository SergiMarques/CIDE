<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<table border="1">
<tr bgcolor="#9acd32">
    <th style="text-align:left">Descripción de cada Fecha</th>
    <th style="text-align:left">Fecha</th>
</tr>
<xsl:for-each select="catalog/cd">
<tr>
    <td><xsl:value-of select="evento"/></td>
    <td><xsl:value-of select="dia"/></td>
</tr>
</xsl:for-each>


</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
