<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
	
		<head> 
			<title>Ejercicio05</title>
		</head>
        <body>
            <table border="1" aling="center">
                <tr>
                    <th colspan="3">Libros</th>
                </tr>
                <tr>
                    <td>Título</td>
                    <td>Autor</td>
                    <td>Precio</td>
                </tr>
                <xsl:for-each select="//libro">
                    <tr>
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="autor"/></td>
                        <td><xsl:value-of select="precio"/></td>
                    </tr>
                </xsl:for-each>

            </table>	
        </body>
	</html>
</xsl:template>
</xsl:stylesheet>