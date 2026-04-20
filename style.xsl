<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns="http://www.w3.org/1999/xhtml">

<xsl:output method="xhtml" indent="yes" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/>

<xsl:template match="/">
<html>
<head>
<title>Activity Badges</title>
<style type="text/css">
  body{font-family:Arial;margin:30px;background:#f7f7f7;}
  h1{color:#2c3e50;border-bottom:2px solid #3498db;padding-bottom:10px;}
  .badge{background:white;padding:20px;margin:20px 0;border-radius:8px;box-shadow:0 2px 4px #0000001a;}
  h2{color:#2980b9;margin-top:0;}
  .desc{color:#34495e;margin:10px 0;}
  .yes{color:#27ae60;font-weight:bold;}
  .no{color:#e74c3c;font-weight:bold;}
  footer{margin-top:40px;color:#7f8c8d;}
</style>
</head>
<body>
  <h1>Scout Activity Badges</h1>
  <xsl:apply-templates select="badges/badge[@type='activity']">
    <xsl:sort select="name"/>
  </xsl:apply-templates>
<footer>© College Productions Ltd</footer>
</body>
</html>
</xsl:template>

<xsl:template match="badge">
<div class="badge">
  <h2><xsl:value-of select="name"/></h2>
  <p class="desc"><xsl:value-of select="description"/></p>
  <p>Beaver: <xsl:choose><xsl:when test="levels/availability[@level='beaver']='Available'"><span class="yes">Available</span></xsl:when><xsl:otherwise><span class="no">Not Available</span></xsl:otherwise></xsl:choose></p>
  <p>Cub: <xsl:choose><xsl:when test="levels/availability[@level='cub']='Available'"><span class="yes">Available</span></xsl:when><xsl:otherwise><span class="no">Not Available</span></xsl:otherwise></xsl:choose></p>
  <p>Scout: <xsl:choose><xsl:when test="levels/availability[@level='scout']='Available'"><span class="yes">Available</span></xsl:when><xsl:otherwise><span class="no">Not Available</span></xsl:otherwise></xsl:choose></p>
</div>
</xsl:template>

</xsl:stylesheet>