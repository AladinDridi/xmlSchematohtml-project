<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>My thesis Collection</h2>
  <table border="1">
	  <thead>
    <tr bgcolor="#9acd32">
      <th style="text-align:left">name</th>
      <th style="text-align:left">department</th>
      <th style="text-align:left">Date</th>
	   <th style="text-align:left">titles</th>
      <th style="text-align:left">subtitle</th>
      <th style="text-align:left">pagenumber</th>

    </tr>
    <xsl:for-each select="catalog/cd">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="department"/></td>
	   <td><xsl:value-of select="date"/></td>
      <td><xsl:value-of select="titles"/></td>
      <td><xsl:value-of select="subtitle"/></td>
      <td><xsl:value-of select="pagenumber"/></td>


    </tr>
    </xsl:for-each>
		  </thead>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

