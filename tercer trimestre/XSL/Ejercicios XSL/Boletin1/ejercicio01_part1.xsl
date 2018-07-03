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
            <!--creamos la tabla-->
            <table align="center" border="0">
                <!--una vez hecha la tabla lo pasamos a poner las condiciones de los datos-->
                <xsl:for-each select="//ciclo"><!--seleccionamos a traves de sentencias de XPATCH
                                                                            el elemento que vamos a hacer raiz para trabajar los datos,
                                                                            en este caso alumno que esta dentro de nota-->
                        <tr><!--filas que saldran-->
                            <td><xsl:value-of select="nombre"/></td><!--usamos el value-of para mostrar el dato nombre-->
                        </tr>
                </xsl:for-each>	
            </table>
        </body>
	</html>
</xsl:template>
</xsl:stylesheet>