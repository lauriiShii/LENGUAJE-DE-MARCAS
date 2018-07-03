<!--Primero declaramos el tipo de documento que es este archivo-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!--Declaramos el elemento raiz desde donde vamos a realizar las transformaciones-->
<xsl:template match="/">

    <!--Comenzamos con el codigo xhtml-->
	<html>
	
		<head> 
			<title>Ejercicio01</title>
		</head>
        <body>
            <xsl:for-each select="//ies">
                <h1><xsl:value-of select="@nombre"/></h1>
                Pagina web: <xsl:value-of select="@web"/>
            </xsl:for-each>	
            <table border="1">
                <xsl:for-each select="//ciclo">
                     <tr>
                        <td><xsl:value-of select="nombre"/></td>
                    </tr>
                </xsl:for-each>	
            </table>	
        </body>
	</html>
</xsl:template>
</xsl:stylesheet>