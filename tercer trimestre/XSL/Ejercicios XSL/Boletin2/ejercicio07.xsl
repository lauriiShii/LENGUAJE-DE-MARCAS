<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
	
		<head> 
			<title>Ejercicio06</title>
		</head>
        <body>
            <table border="1" aling="center">
                <tr>
                    <th colspan="3">Notas</th>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td>Nota Global</td>
                    <td>Textual</td>
                </tr>
                <xsl:for-each select="//alumno">
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="round(sum(nota) div count(nota))"/></td>
                        <td>
							<xsl:choose>
								<xsl:when test="round(sum(nota) div count(nota))&gt;=9">
									Sobresaliente
								</xsl:when>
								<xsl:when test="round(sum(nota) div count(nota))&lt;9 and round(sum(nota) div count(nota))&gt;=7">
									Notable
								</xsl:when>
								<xsl:when test="round(sum(nota) div count(nota))&gt;=6 and round(sum(nota) div count(nota))&lt;7">
									Bien
								</xsl:when>
								<xsl:when test="round(sum(nota) div count(nota))&gt;=5 and round(sum(nota) div count(nota))&lt;6">
									Suficiente
								</xsl:when>
								<xsl:otherwise>
									Insuficiente
								</xsl:otherwise>
							</xsl:choose>
						</td>
                    </tr>
                </xsl:for-each>

            </table>	
        </body>
	</html>
</xsl:template>
</xsl:stylesheet>