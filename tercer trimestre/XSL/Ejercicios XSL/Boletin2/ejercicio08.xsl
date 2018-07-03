<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
	
		<head> 
			<title>Ejercicio05</title>
		</head>
        <body>
            <table border="1" aling="center">
                <tr>
                    <th colspan="2">Alumnos y Profesores</th>
                </tr>
                <tr>
                    <td>Nombre</td>

                    <td>dni/pasaporte</td>
                </tr>
                <xsl:for-each select="//universidad">
                    <tr>
                        <td><xsl:value-of select="./alumno|profesor/nombre"/></td>
                        <td>
                            <xsl:choose>
								<xsl:when test="./alumno|profesor/DNI">
									<xsl:value-of select="./alumno|profesor/DNI"/>
								</xsl:when>
 								<xsl:when test="./alumno|profesor/pasaporte">
									<xsl:value-of select="./alumno|profesor/pasaporte"/>
								</xsl:when>                                                               
								<xsl:otherwise>
									Sin doc
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