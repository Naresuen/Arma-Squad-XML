<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="text()">
	<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="*">
	<xsl:apply-templates/>
</xsl:template>
<xsl:template match="/">
	<html>
	<head>
		<title><xsl:value-of select="/squad/name"/></title>
		<link rel="stylesheet" type="text/css" href="arma.css"></link>
		<script src="//ajax.googleapis.com/ajax/libs/webfont/1/webfont.js"></script>
		<script>
		  WebFont.load({
			google: {
			  families: ['Black Ops One']
			}
		  });
		</script>
	</head>
	<body>
	<!--Main TABLE -->                                                                             
	<table class="main">
	<TR>
	  <TD class="left_row" valign="top">
	<!-- Squad Info Table -->
		<table class="sqd_info">
			<TR height="30">
				<TD class="one">
					<DIV class="sqd_name">
						<xsl:value-of select="/squad/name"/>
					</DIV>
				</TD>
			</TR>
			<TR height="30">
				<TD class="two">
					<DIV class="sqd_title">
						<xsl:value-of select="/squad/title"/>
					</DIV>
				</TD>
			</TR>
			<TR height="100%">
				<TD width="100%" height="100%" valign="top">
					<DIV class="sqd_logo">
					<img id="logo" src="Scimitar-Company.512.png" alt="Scimitar Company Logo"/>
					</DIV>
				</TD>
			</TR>
			<TR height="10">
				<TD class="sqd_website">
					<A>
					   <xsl:attribute name="href">
					   <xsl:value-of select="/squad/web"/>
					   </xsl:attribute>
					   <xsl:value-of select="/squad/web"/>
					</A>
				</TD>
			</TR>
			<TR>
				<TD class="sqd_email">	
					<A>
					  <xsl:attribute name="href">
					  mailto:<xsl:value-of select="/squad/email"/>
					  </xsl:attribute>
					  <xsl:value-of select="/squad/email"/>
					</A>	
				</TD>
			</TR>
		</table>
	<!-- Squad Info Table -->
		</TD>
		<TD class="right_row" valign="top">			
	<!-- Member-Info Table -->
						<table class="member_info">
							<tr>
								<td colspan="2" class="one"><div class="sqd_name">Squad Roster</div></td>
							</tr>						

							<xsl:for-each select="/squad/member">
							<tr>
								<xsl:attribute name="class">
								  <xsl:choose>
								     <xsl:when test="position() mod 2 = 0">one</xsl:when>
								     <xsl:otherwise>two</xsl:otherwise>
								  </xsl:choose>
								</xsl:attribute>
								<td class="member_name" rowspan="2">
									<span class="email">
										<a>
										<xsl:attribute name="href">
											mailto:<xsl:value-of select="email"/>
										</xsl:attribute>
										&#9993;
										</a>
									</span>
								  <xsl:value-of select="name"/>
								</td>
							</tr>
							<tr>
							<xsl:attribute name="class">
							  <xsl:choose>
							     <xsl:when test="position() mod 2 = 0">one</xsl:when>
							     <xsl:otherwise>two</xsl:otherwise>
							  </xsl:choose>
							</xsl:attribute>
								<td  class="member_remark">
								  <xsl:value-of select="remark"/>
								</td>
							</tr>
							</xsl:for-each>
						</table>
	<!-- Member Info Table -->					
	<!--Main TABLE -->
	</TD>
	</TR>
	</table>
	<p style="font-family:verdana;font-size:7pt;color:darkgrey;text-align:center;padding:10px;">
		"xsl display code" by <a href="http://gaming.yoyo-pete.com">YoYo-Pete</a>
	</p>
	</body>
	</html>
</xsl:template>
</xsl:stylesheet>
