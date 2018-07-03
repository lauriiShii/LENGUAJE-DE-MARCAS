<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
   <table border="2">
     <tr>
		<td>senal</td>
	    <td>kilometro</td>
		<td>nombre via</td>
		<td>sentido</td>
		<td>corte_via</td>
		<td>fecha hora</td>
		<td>retencion</td>
		<td>km retencion</td>
	</tr>
	 <xsl:for-each select="evento"> 
	<tr>
	     <td><xsl:value-of select="senal"/></td>
	     <td><xsl:value-of select="km"/></td>
		 <td><xsl:value-of select="nombre_via"/></td>
		 <td><xsl:value-of select="sentido"/></td>
		 <td><xsl:value-of select="corte_via"/></td>
	     <td><xsl:value-of select="fecha_hora"/></td>
		 <td><xsl:value-of select="retencion"/></td>
		 <td><xsl:value-of select="km_retencicion"/></td>
    </tr>
	 </xsl:for-each>
   </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>