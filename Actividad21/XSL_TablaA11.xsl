<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head></head>    
<body>
<table border="1">
<tr  bgcolor="#9acd32">
    <th rowspan="2" style="text-align:left">Descripción de cada Fecha</th>
    <th colspan="4" style="text-align:center">Fecha</th>
</tr>
<tr>
    <th>Dia</th>
    <th>Mes</th>
    <th>Año</th>
</tr>
<xsl:for-each select="eventos/evento">
<tr>
    <td><xsl:value-of select="@Descripcion"/></td>
    <td><xsl:value-of select="Fecha/dia"/></td>
    <td><xsl:value-of select="Fecha/mes"/></td>
    <td><xsl:value-of select="Fecha/ano"/></td>
</tr>
</xsl:for-each>


</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
