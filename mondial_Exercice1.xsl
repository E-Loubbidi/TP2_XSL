<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" encoding="utf-8" indent = "yes"/>
    
    <xsl:template match = "/">
        
        <html>
            <head>
                <title>Mondial.XSL</title>
            </head>
            <body>
                <ul>
                    <li><h1>Afrique :</h1>
                            <ul>
                                <xsl:for-each select = "/*/country">
                                    <xsl:if test = "count(encompassed/@continent)=1 and encompassed/@continent='africa'">
                                        <xsl:variable name="car_code" select="@car_code"></xsl:variable>
                                        <li><h3>Car_Code : <xsl:value-of select="@car_code"/></h3></li>
                                        <li><h4>Pays : <xsl:value-of select="name"/></h4></li>
                                        <li><h4>Population : <xsl:value-of select="population[last()]"/></h4></li>
                                        <ul>
                                            <li><h2>Villes :</h2></li>
                                            <xsl:for-each select="city">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:for-each>
                                            <xsl:for-each select="province">
                                                <xsl:for-each select="city">
                                                    <li><xsl:value-of select="name"/></li>
                                                </xsl:for-each>
                                            </xsl:for-each>
                                        </ul>
                                       <ul>
                                           <li><h2>Airports : </h2></li>
                                           <xsl:for-each select="../airport">
                                               <xsl:if test="$car_code=@country">
                                                   <li><xsl:value-of select="name"/></li>
                                               </xsl:if>
                                           </xsl:for-each>
                                       </ul>
                                        <ul>
                                            <li><h2>Rivières : </h2></li>
                                            <xsl:for-each select="../river">
                                                <xsl:if test="$car_code=@country">
                                                    <li><xsl:value-of select="name"/></li>
                                                </xsl:if>
                                            </xsl:for-each>
                                        </ul>
                                        <ul>
                                            <li><h2>Lacs : </h2></li>
                                            <xsl:for-each select="../lake">
                                                <xsl:if test="$car_code=@country">
                                                    <li><xsl:value-of select="name"/></li>
                                                </xsl:if>
                                            </xsl:for-each>
                                        </ul>
                                        <ul>
                                            <li><h2>îles : </h2></li>
                                            <xsl:for-each select="../island">
                                                <xsl:if test="$car_code=@country">
                                                    <li><xsl:value-of select="name"/></li>
                                                </xsl:if>
                                            </xsl:for-each>
                                        </ul>
                                        <ul>
                                            <li><h2>Montagnes : </h2></li>
                                            <xsl:for-each select="../mountain">
                                                <xsl:if test="$car_code=@country">
                                                    <li><xsl:value-of select="name"/></li>
                                                </xsl:if>
                                            </xsl:for-each>
                                        </ul>
                                        <ul>
                                            <li><h2>Déserts : </h2></li>
                                            <xsl:for-each select="../desert">
                                                <xsl:if test="$car_code=@country">
                                                    <li><xsl:value-of select="name"/></li>
                                                </xsl:if>
                                            </xsl:for-each>
                                        </ul>
                                    </xsl:if>
                                </xsl:for-each>
                            </ul>
                    </li>
                </ul>
                <ul>
                    <li><h1>Europe :</h1>
                        <ul>
                            <xsl:for-each select = "/*/country">
                                <xsl:if test = "count(encompassed/@continent)=1 and encompassed/@continent='europe'">
                                    <xsl:variable name="car_code" select="@car_code"></xsl:variable>
                                    <li><h3>Car_Code : <xsl:value-of select="@car_code"/></h3></li>
                                    <li><h4>Pays : <xsl:value-of select="name"/></h4></li>
                                    <li><h4>Population : <xsl:value-of select="population[last()]"/></h4></li>
                                    <ul>
                                        <li><h2>Villes :</h2></li>
                                        <xsl:for-each select="city">
                                            <li><xsl:value-of select="name"/></li>
                                        </xsl:for-each>
                                        <xsl:for-each select="province">
                                            <xsl:for-each select="city">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Airports : </h2></li>
                                        <xsl:for-each select="../airport">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Rivières : </h2></li>
                                        <xsl:for-each select="../river">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Lacs : </h2></li>
                                        <xsl:for-each select="../lake">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>îles : </h2></li>
                                        <xsl:for-each select="../island">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Montagnes : </h2></li>
                                        <xsl:for-each select="../mountain">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Déserts : </h2></li>
                                        <xsl:for-each select="../desert">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                </xsl:if>
                            </xsl:for-each>
                        </ul>
                    </li>
                </ul>
                <ul>
                    <li><h1>Australie :</h1>
                        <ul>
                            <xsl:for-each select = "/*/country">
                                <xsl:if test = "count(encompassed/@continent)=1 and encompassed/@continent='australia'">
                                    <xsl:variable name="car_code" select="@car_code"></xsl:variable>
                                    <li><h3>Car_Code : <xsl:value-of select="@car_code"/></h3></li>
                                    <li><h4>Pays : <xsl:value-of select="name"/></h4></li>
                                    <li><h4>Population : <xsl:value-of select="population[last()]"/></h4></li>
                                    <ul>
                                        <li><h2>Villes :</h2></li>
                                        <xsl:for-each select="city">
                                            <li><xsl:value-of select="name"/></li>
                                        </xsl:for-each>
                                        <xsl:for-each select="province">
                                            <xsl:for-each select="city">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Airports : </h2></li>
                                        <xsl:for-each select="../airport">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Rivières : </h2></li>
                                        <xsl:for-each select="../river">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Lacs : </h2></li>
                                        <xsl:for-each select="../lake">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>îles : </h2></li>
                                        <xsl:for-each select="../island">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Montagnes : </h2></li>
                                        <xsl:for-each select="../mountain">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Déserts : </h2></li>
                                        <xsl:for-each select="../desert">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                </xsl:if>
                            </xsl:for-each>
                        </ul>
                    </li>
                </ul>
                <ul>
                    <li><h1>Amérique :</h1>
                        <ul>
                            <xsl:for-each select = "/*/country">
                                <xsl:if test = "count(encompassed/@continent)=1 and encompassed/@continent='america'">
                                    <xsl:variable name="car_code" select="@car_code"></xsl:variable>
                                    <li><h3>Car_Code : <xsl:value-of select="@car_code"/></h3></li>
                                    <li><h4>Pays : <xsl:value-of select="name"/></h4></li>
                                    <li><h4>Population : <xsl:value-of select="population[last()]"/></h4></li>
                                    <ul>
                                        <li><h2>Villes :</h2></li>
                                        <xsl:for-each select="city">
                                            <li><xsl:value-of select="name"/></li>
                                        </xsl:for-each>
                                        <xsl:for-each select="province">
                                            <xsl:for-each select="city">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Airports : </h2></li>
                                        <xsl:for-each select="../airport">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Rivières : </h2></li>
                                        <xsl:for-each select="../river">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Lacs : </h2></li>
                                        <xsl:for-each select="../lake">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>îles : </h2></li>
                                        <xsl:for-each select="../island">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Montagnes : </h2></li>
                                        <xsl:for-each select="../mountain">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Déserts : </h2></li>
                                        <xsl:for-each select="../desert">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                </xsl:if>
                            </xsl:for-each>
                        </ul>
                    </li>
                </ul>
                <ul>
                    <li><h1>Asie :</h1>
                        <ul>
                            <xsl:for-each select = "/*/country">
                                <xsl:if test = "count(encompassed/@continent)=1 and encompassed/@continent='asia'">
                                    <xsl:variable name="car_code" select="@car_code"></xsl:variable>
                                    <li><h3>Car_Code : <xsl:value-of select="@car_code"/></h3></li>
                                    <li><h4>Pays : <xsl:value-of select="name"/></h4></li>
                                    <li><h4>Population : <xsl:value-of select="population[last()]"/></h4></li>
                                    <ul>
                                        <li><h2>Villes :</h2></li>
                                        <xsl:for-each select="city">
                                            <li><xsl:value-of select="name"/></li>
                                        </xsl:for-each>
                                        <xsl:for-each select="province">
                                            <xsl:for-each select="city">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Airports : </h2></li>
                                        <xsl:for-each select="../airport">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Rivières : </h2></li>
                                        <xsl:for-each select="../river">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Lacs : </h2></li>
                                        <xsl:for-each select="../lake">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>îles : </h2></li>
                                        <xsl:for-each select="../island">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Montagnes : </h2></li>
                                        <xsl:for-each select="../mountain">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Déserts : </h2></li>
                                        <xsl:for-each select="../desert">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                </xsl:if>
                            </xsl:for-each>
                        </ul>
                    </li>
                </ul>
                <ul>
                    <li><h1>Europe et Asie :</h1>
                        <ul>
                            <xsl:for-each select = "/*/country">
                                <xsl:if test = "count(encompassed/@continent)=2 and encompassed[position()=1]/@continent='europe' and encompassed[position()=2]/@continent='asia'">
                                    <xsl:variable name="car_code" select="@car_code"></xsl:variable>
                                    <li><h3>Car_Code : <xsl:value-of select="@car_code"/></h3></li>
                                    <li><h4>Pays : <xsl:value-of select="name"/></h4></li>
                                    <li><h4>Population : <xsl:value-of select="population[last()]"/></h4></li>
                                    <ul>
                                        <li><h2>Villes :</h2></li>
                                        <xsl:for-each select="city">
                                            <li><xsl:value-of select="name"/></li>
                                        </xsl:for-each>
                                        <xsl:for-each select="province">
                                            <xsl:for-each select="city">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Airports : </h2></li>
                                        <xsl:for-each select="../airport">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Rivières : </h2></li>
                                        <xsl:for-each select="../river">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Lacs : </h2></li>
                                        <xsl:for-each select="../lake">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>îles : </h2></li>
                                        <xsl:for-each select="../island">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Montagnes : </h2></li>
                                        <xsl:for-each select="../mountain">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Déserts : </h2></li>
                                        <xsl:for-each select="../desert">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                </xsl:if>
                            </xsl:for-each>
                        </ul>
                    </li>
                </ul>
                <ul>
                <li><h1>Asie et Afrique :</h1>
                    <ul>
                        <xsl:for-each select = "/*/country">
                            <xsl:if test = "count(encompassed/@continent)=2 and encompassed[position()=1]/@continent='asia' and encompassed[position()=2]/@continent='africa'">
                                <xsl:variable name="car_code" select="@car_code"></xsl:variable>
                                <li><h3>Car_Code : <xsl:value-of select="@car_code"/></h3></li>
                                <li><h4>Pays : <xsl:value-of select="name"/></h4></li>
                                <li><h4>Population : <xsl:value-of select="population[last()]"/></h4></li>
                                <ul>
                                    <li><h2>Villes :</h2></li>
                                    <xsl:for-each select="city">
                                        <li><xsl:value-of select="name"/></li>
                                    </xsl:for-each>
                                    <xsl:for-each select="province">
                                        <xsl:for-each select="city">
                                            <li><xsl:value-of select="name"/></li>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </ul>
                                <ul>
                                    <li><h2>Airports : </h2></li>
                                    <xsl:for-each select="../airport">
                                        <xsl:if test="$car_code=@country">
                                            <li><xsl:value-of select="name"/></li>
                                        </xsl:if>
                                    </xsl:for-each>
                                </ul>
                                <ul>
                                    <li><h2>Rivières : </h2></li>
                                    <xsl:for-each select="../river">
                                        <xsl:if test="$car_code=@country">
                                            <li><xsl:value-of select="name"/></li>
                                        </xsl:if>
                                    </xsl:for-each>
                                </ul>
                                <ul>
                                    <li><h2>Lacs : </h2></li>
                                    <xsl:for-each select="../lake">
                                        <xsl:if test="$car_code=@country">
                                            <li><xsl:value-of select="name"/></li>
                                        </xsl:if>
                                    </xsl:for-each>
                                </ul>
                                <ul>
                                    <li><h2>îles : </h2></li>
                                    <xsl:for-each select="../island">
                                        <xsl:if test="$car_code=@country">
                                            <li><xsl:value-of select="name"/></li>
                                        </xsl:if>
                                    </xsl:for-each>
                                </ul>
                                <ul>
                                    <li><h2>Montagnes : </h2></li>
                                    <xsl:for-each select="../mountain">
                                        <xsl:if test="$car_code=@country">
                                            <li><xsl:value-of select="name"/></li>
                                        </xsl:if>
                                    </xsl:for-each>
                                </ul>
                                <ul>
                                    <li><h2>Déserts : </h2></li>
                                    <xsl:for-each select="../desert">
                                        <xsl:if test="$car_code=@country">
                                            <li><xsl:value-of select="name"/></li>
                                        </xsl:if>
                                    </xsl:for-each>
                                </ul>
                            </xsl:if>
                        </xsl:for-each>
                    </ul>
                </li>
                </ul>
                <ul>
                    <li><h1>Asie et Australie :</h1>
                        <ul>
                            <xsl:for-each select = "/*/country">
                                <xsl:if test = "count(encompassed/@continent)=2 and encompassed[position()=1]/@continent='asia' and encompassed[position()=2]/@continent='australia'">
                                    <xsl:variable name="car_code" select="@car_code"></xsl:variable>
                                    <li><h3>Car_Code : <xsl:value-of select="@car_code"/></h3></li>
                                    <li><h4>Pays : <xsl:value-of select="name"/></h4></li>
                                    <li><h4>Population : <xsl:value-of select="population[last()]"/></h4></li>
                                    <ul>
                                        <li><h2>Villes :</h2></li>
                                        <xsl:for-each select="city">
                                            <li><xsl:value-of select="name"/></li>
                                        </xsl:for-each>
                                        <xsl:for-each select="province">
                                            <xsl:for-each select="city">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:for-each>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Airports : </h2></li>
                                        <xsl:for-each select="../airport">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Rivières : </h2></li>
                                        <xsl:for-each select="../river">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Lacs : </h2></li>
                                        <xsl:for-each select="../lake">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>îles : </h2></li>
                                        <xsl:for-each select="../island">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Montagnes : </h2></li>
                                        <xsl:for-each select="../mountain">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                    <ul>
                                        <li><h2>Déserts : </h2></li>
                                        <xsl:for-each select="../desert">
                                            <xsl:if test="$car_code=@country">
                                                <li><xsl:value-of select="name"/></li>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </ul>
                                </xsl:if>
                            </xsl:for-each>
                        </ul>
                    </li>
                </ul>
            </body>
        </html>
        
    </xsl:template>
    
</xsl:stylesheet>