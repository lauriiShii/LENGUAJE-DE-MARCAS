<!--Primero declaramos el tipo de documento que es este archivo-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!--Declaramos el elemento raiz desde donde vamos a realizar las transformaciones-->
<xsl:template match="/">

    <!--Comenzamos con el codigo xhtml-->
	<html>
	
		<head>
            <link rel="stylesheet" type="text/css" href="ejercicio04_apart1.css"/>
			<title>Ejercicio01</title>
		</head>
        <body>
            <p id="intro">Apartado 1:</p>
            <xsl:for-each select="//contact">
                <h3>
                    <xsl:value-of select="name"/>
                </h3>
                <p>
                    <xsl:value-of select="address"/><br/>
                    <xsl:value-of select="city"/>
                    <xsl:value-of select="state"/>
                    <xsl:value-of select="zip"/>
                </p>
            </xsl:for-each>	
        </body>
	</html>
</xsl:template>
</xsl:stylesheet>