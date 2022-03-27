<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output doctype-public="-//W3C//DTD XHTML 1.1//EN" doctype-system="http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd" encoding="ISO-8859-2" method="html"/>

  <xsl:template match="/">

	
    <html>
      <head>
		<meta> charset="UTF-8"</meta>
		<title>Zadanie 4</title>
		<link rel="Stylesheet" href="style.css" type="text/css"/>
      </head>

      <body>
		<div class="faktura">
		<div class="miejscowosc">
			Skierniewice 26.03.2022
		</div>
		<div class="miejscowosc">
			29.03.2022
		</div>
			<div class="produkty">
			
				<xsl:for-each select="Dane/Towar">
							
					<xsl:variable name="wartosc" select="Ilosc * Cena"/>
					<xsl:variable name="VAT" select="round(Stawka * Ilosc * Cena)"/>
					<xsl:variable name="wartoscVAT" select="$wartosc + $VAT"/>
				
					<div class="nazwa"><xsl:value-of select="Nazwa"/></div>
					<div class="ilosc"><xsl:value-of select="Ilosc"/></div>
					<div class="cena"><xsl:value-of select="Cena"/></div>
					<div class="wartosc"><xsl:value-of select="$wartosc"/></div>
					<div class="stawka"><xsl:value-of select="Stawka"/></div>
					<div class="VAT"><xsl:value-of select="$VAT"/></div>
					<div class="wartoscVAT"><xsl:value-of select="$wartoscVAT"/></div>
					
				</xsl:for-each>
				
			</div>
		</div>
      </body>
 </html>

  </xsl:template>
</xsl:stylesheet>