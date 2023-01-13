<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head></head>    
<body>
<table border="1">

<tr>
<th colspan="9" style="text-align:center">Factura nº999</th>
</tr>
<xsl:for-each select="Recibo/Factura">
<tr>
    <td  colspan="5"><xsl:value-of select="empresa"/>
    <br></br><xsl:value-of select="calle"/>
    <br></br> <xsl:value-of select="localidad"/>
    <br></br>C.I.F: <xsl:value-of select="CIF"/>
    <br></br>teléfono: <xsl:value-of select="telefono"/>
    <br></br>fax: <xsl:value-of select="fax"/></td>

    <td colspan="3"><br></br>Fecha: <xsl:value-of select="Fecha"/>
    <br></br>Pedido <xsl:value-of select="pedido"/>
    <br></br>Forma de pago: <xsl:value-of select="forma_de_pago"/></td>
</tr>
</xsl:for-each>
<tr>
    <th colspan="9" style="text-align:center">Datos Cliente</th>
</tr>
<xsl:for-each select="Recibo/datos_cliente">
    <tr>
        <td colspan="9">nº cliente: <xsl:value-of select="cliente"/>
        <br></br>Nombre: <xsl:value-of select="nombre"/>
        <br></br>Dirección de envío: <xsl:value-of select="dirrección"/>
        <br></br>Población: <xsl:value-of select="población"/>
        <br></br>cod. postal: <xsl:value-of select="codigo_postal"/>
        <br></br>Provincia: <xsl:value-of select="provincia"/></td>
    </tr>
</xsl:for-each>
<tr>
    <th colspan="9" style="text-align:center">Datos Factura</th>
</tr>
<tr>
    <th>REF.</th>
    <th>DESCRIPCIÓN</th>
    <th>CANT.</th>
    <th>PRECIO</th>
    <th>I.V.A.</th>
    <th>IMPORTE</th>
</tr>
<xsl:for-each select="Recibo/tabla/datos_factura">
<tr>
    <td><xsl:value-of select="referencia"/></td>
    <td><xsl:value-of select="descripción"/></td>
    <td><xsl:value-of select="cantidad"/></td>
    <td><xsl:value-of select="precio"/></td>
    <td><xsl:value-of select="IVA"/></td>
    <td><xsl:value-of select="Importe"/></td>
</tr>
</xsl:for-each>
<br></br>
<xsl:for-each select="Recibo/Suma">
<tr>
    <td colspan="2"><xsl:value-of select="Base_imponible"/></td>
    <td><xsl:value-of select="IVA"/></td>
    <td colspan="4"><xsl:value-of select="Cuota_IVA"/></td>
</tr>
<tr>
    <th colspan="9" style="text-align:center">TOTAL FACTURA <xsl:value-of select="precio_total"/></th>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>