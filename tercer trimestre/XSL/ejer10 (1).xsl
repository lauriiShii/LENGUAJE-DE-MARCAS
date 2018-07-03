<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
<xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes" />
<xsl:template match="/">
   <html>
      <body>
         <ol>
             <xsl:for-each select="//autor">
                 <xsl:sort select="./apellido" order="ascending"></xsl:sort>
                 <li><xsl:value-of select="./nombre|./apellido"/></li>
             </xsl:for-each>
         </ol>
      </body>
   </html>
</xsl:template>
</xsl:stylesheet>