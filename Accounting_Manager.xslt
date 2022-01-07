
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>Manager Details</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">M_ID</th>
      <th style="text-align:left">M_Name</th>
      <th style="text-align:left">M_MOBILENO</th>
      <th style="text-align:left">M_BRANCH</th>
      <th style="text-align:left">M_ACCNO</th>
      <th style="text-align:left">M_BANKNAME</th>
      <th style="text-align:left">M_SALARY</th>
      <th style="text-align:left">SALARY_STATUS</th>
    </tr>
    <xsl:for-each select="Accounting/Manager">
    <xsl:sort select="name"></xsl:sort>
    <xsl:if test="salary>50000" >
    
    <tr>
      <td><xsl:value-of select="id"/></td>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="mobileno"/></td>
      <td><xsl:value-of select="branch"/></td>
      <td><xsl:value-of select="accno"/></td>
      <td><xsl:value-of select="bankname"/></td>
      <td><xsl:value-of select="salary"/></td>
      <td><xsl:value-of select="status"/></td>
     
    </tr>
    </xsl:if>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>