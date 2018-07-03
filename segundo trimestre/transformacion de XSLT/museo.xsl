<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
    <ul>
         <li>cuadro y autor: </li>
    </ul>
   <table border="2">
     <tr>
		<td>tipo de entrada y precio</td>>
	</tr>
	 <xsl:for-each select="amuseos/museo"> 
	 <ul>
          <li><xsl:value-of select="cuadro" select="autor"/></li>
     </ul>
	 <tr>
		 <td><xsl:value-of select="precio_entrada"/></td>
	 </tr>
	 </xsl:for-each>
   </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>