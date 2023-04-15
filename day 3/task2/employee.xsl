<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Employee List</title>
      </head>
      <body>
        <h1>Employee List</h1>
        <table>
          <tr>
            <th>Name</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Address</th>
          </tr>
          <xsl:apply-templates select="employee/employees/employee"/>
        </table>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="employee">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="phones/phone"/></td>
      <td><xsl:value-of select="email"/></td>
      <td>
        <xsl:value-of select="addresses/address/country"/>,
        <xsl:value-of select="addresses/address/city"/>,
        <xsl:value-of select="addresses/address/region"/>,
        <xsl:value-of select="addresses/address/buildingNumber"/>,
        <xsl:value-of select="addresses/address/street"/>
      </td>
    </tr>
  </xsl:template>
  
</xsl:stylesheet>
