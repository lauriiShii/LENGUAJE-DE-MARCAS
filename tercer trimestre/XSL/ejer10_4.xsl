<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <xsl:for-each select="//libro">
                        <xsl:sort select="./titulo"/>
                        <tr>
                            <xsl:choose>
                                <xsl:when test="./precio &gt; 100">
                                    <td style="background-color:red"><xsl:value-of select="./titulo"/><xsl:text>(Caro)</xsl:text></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td><xsl:value-of select="./titulo"/></td>
                                </xsl:otherwise>
                            </xsl:choose>
                            <xsl:choose>
                                <xsl:when test="empty(./autor)">
                                    <td><xsl:text> </xsl:text></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td><xsl:value-of select="./autor/nombre|./autor/apellido"/></td>
                                </xsl:otherwise>
                            </xsl:choose>
                            <xsl:choose>
                                <xsl:when test="empty(./editor)">
                                    <td><xsl:text> </xsl:text></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td><xsl:value-of select="./editor/nombre|./editor/apellido|./editor/afiliacion"/></td>
                                </xsl:otherwise>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>