<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
	<head>
	</head>
<body>
<h2>My thesis Collection</h2>
<table border="1">
<tr bgcolor="#9acd32">
<th style="text-align:left">name</th>
<th style="text-align:left">department</th>
<th style="text-align:left">Date</th>
<th style="text-align:left">titles</th>
<th style="text-align:left">subtitle</th>
<th style="text-align:left">pagenumber</th>
</tr>
<xsl:for-each select="thesis/cover">
<tr>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="department"/></td>
<td><xsl:value-of select="date"/></td>
<td><xsl:value-of select="titles"/></td>
<td><xsl:value-of select="subtitle"/></td>
<td><xsl:value-of select="pagenumber"/></td>
 </tr>
</xsl:for-each>
</table>
<table border="1">
<thead>
<tr bgcolor="#9acd32">
<th style="text-align:left">name</th>
<th style="text-align:left">fullname</th>
<th style="text-align:left">Date</th>
<th style="text-align:left">Age</th>
</tr>	
<xsl:for-each select="thesis/authors">
<tr>
<td><xsl:value-of select="name"/></td>	
<td><xsl:value-of select="fullname"/></td>	
<td><xsl:value-of select="date"/></td>	
	
</tr>
</xsl:for-each>
</thead>
<tbody>
<tr>
<th color="#9acd32" colspan="4">Advisors</th>	
</tr>
<tr bgcolor="#9acd32">
<th style="text-align:left">name</th>
<th style="text-align:left">fullname</th>
<th style="text-align:left">Date</th>
<th style="text-align:left">Age</th>
</tr>	
<xsl:for-each select="thesis/advisors">
<tr>
<td><xsl:value-of select="name"/></td>	
<td><xsl:value-of select="fullname"/></td>	
<td><xsl:value-of select="date"/></td>
<td><xsl:value-of select="age"/></td>	
</tr>
</xsl:for-each>	
<th color="#9acd32" colspan="4">Content</th>	
<tr bgcolor="#9acd32">
<th style="text-align:left">titles</th>
<th style="text-align:left">number</th>
<th style="text-align:left">pagenumber</th>
<th style="text-align:left">subcontent</th>
</tr>	
<tr>
<xsl:for-each select="thesis/content">
<td><xsl:value-of select="titles"/></td>	
<td><xsl:value-of select="number"/></td>	
<td><xsl:value-of select="pagenumber"/></td>
<td><xsl:value-of rowspan="3"/></td>
</xsl:for-each>
</tr>
<tr>
<xsl:for-each select="thesis/content/subcontent">
<td><xsl:value-of select="subtitles"/></td>	
<td><xsl:value-of select="subnumber"/></td>	
<td><xsl:value-of select="subpagenumber"/></td>
</xsl:for-each>
	</tr>
</tbody>
</table>
</body>
</html>
</xsl:template>
	</xsl:stylesheet>

