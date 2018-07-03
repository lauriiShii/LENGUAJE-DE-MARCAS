<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
	
		<head> 
			<title>Ejercicio06</title>
		</head>
        <body>
            <table border="1" aling="center">
                <tr>
                    <th colspan="2">Notas</th>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td>Nota Global</td>
                </tr>
                <xsl:for-each select="//alumno">
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="avg(nota)"/></td>
                    </tr>
                </xsl:for-each>

            </table>	
        </body>
	</html>
</xsl:template>
</xsl:stylesheet>