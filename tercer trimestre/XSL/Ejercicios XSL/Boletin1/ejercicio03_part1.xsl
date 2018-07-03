<!--Primero declaramos el tipo de documento que es este archivo-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!--Declaramos el elemento raiz desde donde vamos a realizar las transformaciones-->
<xsl:template match="/">

    <!--Comenzamos con el codigo xhtml-->
	<html>
	
		<head> 
			<title>Ejercicio02</title>
		</head>
        <body>
            <xsl:for-each select="//ies">
                <h1><xsl:value-of select="nombre"/></h1><br/>
            </xsl:for-each>	
            <xsl:for-each select="//ciclo">
                <xsl:value-of select="nombre"/><br/>
            </xsl:for-each>	
        </body>
	</html>
</xsl:template>
</xsl:stylesheet>