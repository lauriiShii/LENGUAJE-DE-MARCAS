<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
   <table border="2">
     <tr>Nokia Lumia 920 Blanco</tr>
     <tr>
		<td>
		    <ul>
		       <il></il>
			   <il></il>
			   <il></il>
			   <il></il>
		    </ul>
		</td>
	    <td>
		    <tr>Contrato:</tr>
			<tr></tr>
			<tr>Libre</tr>
			<tr></tr>
		</td>
		<td>edad</td>
	</tr>
	 <xsl:for-each select="alumnos/alumno"> <!-- si pongo template xPach nos situamos arriba del arbol -->
	 <tr>
	     <td><xsl:value-of select="nombre"/></td>
	     <td><xsl:value-of select="ap"/></td>
		 <td><xsl:value-of select="nombre"/></td>
	 </tr>
	 </xsl:for-each>
   </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>