<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>COFFEE HOUSE MANAGEMENT(Account Managament System)</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">ID</th>
      <th style="text-align:left">NAME</th>
      <th style="text-align:left">DESIGNATION</th>
      <th style="text-align:left">BRANCH</th>
      <th style="text-align:left">SALARY</th>
      <th style="text-align:left">ACC NO</th>
      <th style="text-align:left">BANK</th>
      <th style="text-align:left">STATUS</th>
    </tr>
    <xsl:for-each select="empbankdetails/employee">
    <xsl:sort select="name"></xsl:sort>
    <xsl:if test="price>15000">
    
    <tr>
      <td><xsl:value-of select="id"/></td>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="designation"/></td>
      <td><xsl:value-of select="location"/></td>
      <td><xsl:value-of select="price"/></td>
      <td><xsl:value-of select="number"/></td>
      <td><xsl:value-of select="bank"/></td>
      <td><xsl:value-of select="status"/></td>
     
    </tr>
    </xsl:if>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>