<!--Primero declaramos el tipo de documento que es este archivo-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!--Declaramos el elemento raiz desde donde vamos a realizar las transformaciones-->
<xsl:template match="/">

    <!--Comenzamos con el codigo xhtml-->
	<html>
	
		<head> 
			<link rel="stylesheet" type="text/css" href="lmsgi04.css"/> <!---Importamos el css-->
			<title>Evaluacion</title>
		</head>
	
	<body>
		
		<!--creamos la tabla-->
		<table align="center">
		
			<tr><!--una fila-->
				<td colspan="3" class="titulito">Datos</td>
				<td colspan="4" class="titulito">Notas</td>
			</tr>
			
			<tr><!--una fila-->
				<td class="titulo">Nombre</td>
				<td class="titulo">Apellidos</td>
				<td class="titulo">Faltas</td>
				<td class="titulo">Tareas</td>
				<td class="titulo">Cuestionarios</td>
				<td class="titulo">Examen</td>
				<td class="titulo">Final</td>
			</tr>
			
			<!--una vez hecha la tabla lo pasamos a poner las condiciones de los datos-->
			<xsl:for-each select="notas/alumno"><!--seleccionamos a traves de sentencias de XPATCH
			                                                            el elemento que vamos a hacer raiz para trabajar los datos,
																		en este caso alumno que esta dentro de nota-->
																		
				<!--Creamos una sentencia condicional (en este tipo de lenguaje se carece de la sentencia else)-->
				<xsl:if test="@convocatoria='Junio'"> <!--nuestra condicion para que aparezcan en la tabla es que esten
				                                                             en la convocatoria de junio por lo que tenemos que acceder al 
																			 atributo convocatoria que es unico en el xml por lo que lo podemos 
																			 mencionar directamente-->
																			 
					<tr><!--filas que saldran-->
						<td><xsl:value-of select="nombre"/></td><!--usamos el value-of para mostrar el dato nombre-->
						<td>
							<xsl:for-each select="apellido"><!--el for-each permite itenerar datos, lo que quiere decir que 
							                                                   podemos coger varios elementos-->
								<xsl:value-of select="."/><xsl:text> </xsl:text><!--en el value ponemos la condicion y ponemos 
								                                                                      la etiqueta tect para que nos muestre el texto-->
							</xsl:for-each>
						</td>
						<td>
							<xsl:choose><!--cuando puede ser varios casos usamos el choose-->
								<xsl:when test="faltas">
									<xsl:value-of select="faltas"/>
								</xsl:when>
								<xsl:otherwise><!--si no hace ninguna de las condiciones anteriores
								                            que en este caso solo es una hace esto, poner sin faltas-->
									Sin faltas
								</xsl:otherwise>	
							</xsl:choose>
						</td>
						<td><xsl:value-of select="tareas"/></td>
						<td><xsl:value-of select="cuestionarios"/></td>
						<td><xsl:value-of select="examen"/></td>
						<td>
							<xsl:choose>
								<xsl:when test="final&gt;=9">
									Sobresaliente
								</xsl:when>
								<xsl:when test="final&lt;9 and final&gt;=7">
									Notable
								</xsl:when>
								<xsl:when test="final&gt;=6 and final&lt;7">
									Bien
								</xsl:when>
								<xsl:when test="final&gt;=5 and final&lt;6">
									Bien
								</xsl:when>
								<xsl:otherwise>
									Insuficiente
								</xsl:otherwise>
							</xsl:choose>
						</td>
					</tr>
					
				</xsl:if>
				
			</xsl:for-each>	
			
		</table>
	</body>
	</html>
</xsl:template>
</xsl:stylesheet>