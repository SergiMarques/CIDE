<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text" />

<!-- Recibo -->
<xsl:template match="/">
  <xsl:text>Recibo:</xsl:text>
        <xsl:apply-templates />
</xsl:template>

<!-- Factura -->
<xsl:template match="Factura">
  <xsl:text>
  Factura:</xsl:text>
        <xsl:text>
    number: </xsl:text><xsl:value-of select="@number" />
        <xsl:text>
    empresa: </xsl:text><xsl:value-of
    select="empresa" />
        <xsl:text>
    calle: </xsl:text><xsl:value-of select="calle" />
        <xsl:text>
    localidad: </xsl:text><xsl:value-of
    select="localidad" />
        <xsl:text>
    CIF: </xsl:text><xsl:value-of select="CIF" />
        <xsl:text>
    telefono: </xsl:text><xsl:value-of
    select="telefono" />
        <xsl:text>
    fax: </xsl:text><xsl:value-of select="fax" />
        <xsl:text>
    Fecha: </xsl:text><xsl:value-of
    select="Fecha" />
        <xsl:text>
    pedido: </xsl:text><xsl:value-of select="pedido" />
        <xsl:text>
    forma_de_pago: </xsl:text><xsl:value-of
    select="forma_de_pago" />
    </xsl:text>
</xsl:template>

<!-- datos_cliente -->
<xsl:template match="datos_cliente">
  <xsl:text>
  datos_cliente:</xsl:text>
        <xsl:text>
    cliente: </xsl:text><xsl:value-of select="cliente" />
        <xsl:text>
    nombre: </xsl:text><xsl:value-of
    select="nombre" />
        <xsl:text>
    dirrección: </xsl:text><xsl:value-of select="dirrección" />
        <xsl:text>
    población: </xsl:text><xsl:value-of
    select="población" />
        <xsl:text>
    codigo_postal: </xsl:text><xsl:value-of select="codigo_postal" />
        <xsl:text>
    provincia: </xsl:text><xsl:value-of
    select="provincia" />
    </xsl:text>
</xsl:template>

<!-- tabla -->
<xsl:template match="tabla">
  <xsl:text>
  tabla:</xsl:text>
        <xsl:apply-templates />
</xsl:template>

<!-- datos_factura -->
<xsl:template match="datos_factura">
<xsl:text>
    - referencia: </xsl:text>
<xsl:value-of select="referencia" />
<xsl:text>
      descripción: </xsl:text>
<xsl:value-of select="descripción" />
<xsl:text>
      cantidad: </xsl:text>
<xsl:value-of select="cantidad" />
<xsl:text>
      precio: </xsl:text>
<xsl:value-of select="precio" />
<xsl:text>
      IVA: </xsl:text>
<xsl:value-of select="IVA" />
<xsl:text>
Importe: </xsl:text>
<xsl:value-of select="Importe"/>
</xsl:text>
</xsl:template>

<!-- Suma -->
<xsl:template match="Suma">
<xsl:text>
Base_imponible: </xsl:text>
<xsl:value-of select="Base_imponible"/>
<xsl:text>
IVA </xsl:text>
<xsl:value-of select="IVA"/>
<xsl:text>
Cuota_IVA </xsl:text>
<xsl:value-of select="Cuota_IVA"/>
<xsl:text>
precio_total </xsl:text>
<xsl:value-of select="precio_total"/>
</xsl:text>
</xsl:template>
