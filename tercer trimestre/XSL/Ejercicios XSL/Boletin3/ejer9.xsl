<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
<xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes" />
<xsl:template match="/">
  <html>
    <head>
        <style type="text/css">
            td, th {
            border:dotted blue;
            margin:0px;
            }
            table {
            border-spacing:2px;
            }
        </style>
    </head>
    <body>
      <table>
        <tr>
            <th colspan="3">Datos</th>
            <th colspan="4">Notas</th>
        </tr>
        <tr style="background-color:silver;">
            <td>Nombre</td>
            <td>Apellidos</td>
            <td>Faltas</td>
            <td>Tareas</td>
            <td>Cuestionarios</td>
            <td>Examenes</td>
            <td>Nota</td>
        </tr>
        <xsl:for-each select="//alumno[./@convocatoria='Junio']">
          <tr>
              <td><xsl:value-of select="./nombre"/></td>
              <td><xsl:value-of select="./apellido"/></td>
              <td>
                  <xsl:choose>
                      <xsl:when test="empty(./faltas)">
                          <xsl:text>Sin faltas</xsl:text>
                      </xsl:when>
                      <xsl:otherwise>
                         <xsl:value-of select="./faltas"/>
                      </xsl:otherwise>
                  </xsl:choose> 
              </td>
              <td><xsl:value-of select="./tareas"/></td>
              <td style="text-align:center;"><xsl:value-of select="./cuestionarios"/></td>
              <td><xsl:value-of select="./examen"/></td>
              <td>
                 <xsl:choose>
                     <xsl:when test="./final &gt; 9 or ./final=9">
                       <xsl:text>Sobresaliente</xsl:text>
                   </xsl:when>
                     <xsl:when test="./final &gt; 7 or ./final=7">
                       <xsl:text>Notable</xsl:text>
                   </xsl:when>
                     <xsl:when test="./final &gt; 6 or ./final=6">
                       <xsl:text>Bien</xsl:text>
                   </xsl:when>
                     <xsl:when test="./final &gt; 5 or ./final=5">
                       <xsl:text>Suficiente</xsl:text>
                   </xsl:when>
                   <xsl:when test="./final &lt; 5">
                       <xsl:text>Insuficiente</xsl:text>
                   </xsl:when>
                 </xsl:choose>
              </td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>