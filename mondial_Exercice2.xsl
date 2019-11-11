<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Religons</title>
            </head>
            <body>
                <table>
                    <tr>
                        <th></th>
                        <th>Musulman</th>
                        <th>Christian</th>
                        <th>Roman Catholic</th>
                    </tr>
                    <xsl:variable name="NMuslimAfrica" select="sum(/*/country/religion[text()='Muslim'][preceding-sibling::encompassed/@continent='africa']/(@percentage  * preceding-sibling::population[position()=1] )) div 100"/>
                    <xsl:variable name="NChristianAfrica" select="sum(/*/country/religion[text()='Christian' or text()='Christian Orthodox' or text()='Christian Congregationalist'][preceding-sibling::encompassed/@continent='africa']/(@percentage * preceding-sibling::population[position()=1])) div 100"/>
                    <xsl:variable name="NCatholicAfrica" select="sum(/*/country/religion[text()='Roman Catholic'][preceding-sibling::encompassed/@continent='africa']/(@percentage * preceding-sibling::population[position()=1])) div 100"/>
                    <tr>
                        <th>Afrique</th>
                        <td><xsl:value-of select="$NMuslimAfrica"/></td>
                        <td><xsl:value-of select="$NChristianAfrica"/></td>
                        <td><xsl:value-of select="$NCatholicAfrica"/></td>
                    </tr>
                    
                    <xsl:variable name="NMuslimEurope" select="sum(/*/country/religion[text()='Muslim'][preceding-sibling::encompassed/@continent='europe']/(@percentage  * preceding-sibling::population[position()=1] )) div 100"/>
                    <xsl:variable name="NChristianEurope" select="sum(/*/country/religion[text()='Christian' or text()='Christian Orthodox' or text()='Christian Congregationalist'][preceding-sibling::encompassed/@continent='europe']/(@percentage * preceding-sibling::population[position()=1])) div 100"/>
                    <xsl:variable name="NCatholicEurope" select="sum(/*/country/religion[text()='Roman Catholic'][preceding-sibling::encompassed/@continent='europe']/(@percentage * preceding-sibling::population[position()=1])) div 100"/>
                    <tr>
                        <th>Europe</th>
                        <td><xsl:value-of select="$NMuslimEurope"/></td>
                        <td><xsl:value-of select="$NChristianEurope"/></td>
                        <td><xsl:value-of select="$NCatholicEurope"/></td>
                    </tr>
                    
                    <xsl:variable name="NMuslimAustralia" select="sum(/*/country/religion[text()='Muslim'][preceding-sibling::encompassed/@continent='australia']/(@percentage  * preceding-sibling::population[position()=1] )) div 100"/>
                    <xsl:variable name="NChristianAustralia" select="sum(/*/country/religion[text()='Christian' or text()='Christian Orthodox' or text()='Christian Congregationalist'][preceding-sibling::encompassed/@continent='australia']/(@percentage * preceding-sibling::population[position()=1])) div 100"/>
                    <xsl:variable name="NCatholicAustralia" select="sum(/*/country/religion[text()='Roman Catholic'][preceding-sibling::encompassed/@continent='australia']/(@percentage * preceding-sibling::population[position()=1])) div 100"/>
                    <tr>
                        <th>Australia</th>
                        <td><xsl:value-of select="$NMuslimAustralia"/></td>
                        <td><xsl:value-of select="$NChristianAustralia"/></td>
                        <td><xsl:value-of select="$NCatholicAustralia"/></td>
                    </tr>
                    
                    <xsl:variable name="NMuslimAsia" select="sum(/*/country/religion[text()='Muslim'][preceding-sibling::encompassed/@continent='asia']/(@percentage  * preceding-sibling::population[position()=1] )) div 100"/>
                    <xsl:variable name="NChristianAsia" select="sum(/*/country/religion[text()='Christian' or text()='Christian Orthodox' or text()='Christian Congregationalist'][preceding-sibling::encompassed/@continent='asia']/(@percentage * preceding-sibling::population[position()=1])) div 100"/>
                    <xsl:variable name="NCatholicAsia" select="sum(/*/country/religion[text()='Roman Catholic'][preceding-sibling::encompassed/@continent='asia']/(@percentage * preceding-sibling::population[position()=1])) div 100"/>
                    <tr>
                        <th>Asie</th>
                        <td><xsl:value-of select="$NMuslimAsia"/></td>
                        <td><xsl:value-of select="$NChristianAsia"/></td>
                        <td><xsl:value-of select="$NCatholicAsia"/></td>
                    </tr>
                    
                    <xsl:variable name="NMuslimAmerica" select="sum(/*/country/religion[text()='Muslim'][preceding-sibling::encompassed/@continent='america']/(@percentage  * preceding-sibling::population[position()=1] )) div 100"/>
                    <xsl:variable name="NChristianAmerica" select="sum(/*/country/religion[text()='Christian' or text()='Christian Orthodox' or text()='Christian Congregationalist'][preceding-sibling::encompassed/@continent='america']/(@percentage * preceding-sibling::population[position()=1])) div 100"/>
                    <xsl:variable name="NCatholicAmerica" select="sum(/*/country/religion[text()='Roman Catholic'][preceding-sibling::encompassed/@continent='america']/(@percentage * preceding-sibling::population[position()=1])) div 100"/>
                    <tr>
                        <th>America</th>
                        <td><xsl:value-of select="$NMuslimAmerica"/></td>
                        <td><xsl:value-of select="$NChristianAmerica"/></td>
                        <td><xsl:value-of select="$NCatholicAmerica"/></td>
                    </tr>
                    
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>