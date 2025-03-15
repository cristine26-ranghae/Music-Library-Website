<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Music Library</title>
            </head>
            <body>  
            <h1>Music Library</h1>
            <table border="1">
                <tr bgcolor="#9acd32">
                <th>Title</th>
                <th>Artist</th>
                <th>Album</th>
                <th>Debut Year</th>               
                </tr>
            <xsl:for-each select="music/song">
                <tr>
                  <td><xsl:value-of select="songTitle"/></td>
                  <td><xsl:value-of select="artist"/></td>
                  <td>
                      <ul>
                      <xsl:for-each select="albums/album">
                         <li><xsl:value-of select="."/></li>
                      </xsl:for-each>
                      </ul>
                </td>
                <td><xsl:value-of select="debutYear"/></td>
              </tr>
             </xsl:for-each> 
            </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>