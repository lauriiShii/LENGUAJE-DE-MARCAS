<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <xsl:for-each select="//libro">
                        <xsl:sort select="./precio" data-type="number"/>
                        <tr>
                           <td><xsl:value-of select="./precio"/></td>
                            <xsl:choose>
                                <xsl:when test="./precio &gt; 100">
                                    <td style="background-color:red"><xsl:value-of select="./titulo"/></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td><xsl:value-of select="./titulo"/></td>
                                </xsl:otherwise>
                            </xsl:choose>
                           <td><i><xsl:value-of select="./@año"/></i></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>