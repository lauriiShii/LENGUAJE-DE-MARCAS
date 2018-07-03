<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
	<table border="2">
		<tr>
			<td>nombre</td>
			<td>apellidos</td>
			<td>calle</td>
			<td>cp</td>
			<td>localidad</td>
			<td>movil</td>
			<td>casa</td>
			<td>trabajo</td>
		</tr>
		<xsl:for-each select="agenda/contactos/persona">
		<tr>
			<td><xsl:value-of select="identificadores/nombre"/></td>
			<td><xsl:value-of select="identificadores/apellidos"/></td>
			<td><xsl:value-of select="direccion/calle"/></td>
			<td><xsl:value-of select="direccion/cp"/></td>
			<td><xsl:value-of select="direccion/localidad"/></td>
			<td><xsl:value-of select="telefonos/movil"/></td>
			<td><xsl:value-of select="telefonos/casa"/></td>
			<td><xsl:value-of select="telefonos/trabajo"/></td>
		</tr>
		</xsl:for-each>
	</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>