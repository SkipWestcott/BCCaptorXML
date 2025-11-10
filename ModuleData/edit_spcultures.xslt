<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
	
	
	<xsl:template match="Culture[@id='vakken']">
		<xsl:copy>
			<!-- <xsl:copy-of select="@*" /> -->
			<xsl:apply-templates select="@* | node()"/>
			<notable_and_wanderer_templates>
				<template name="NPCCharacter.spcwandererzbccaptorvakkenmaiden" />
			</notable_and_wanderer_templates>
		</xsl:copy>
	</xsl:template>
	<!-- <xsl:template match="Culture[@id='sturgia']/notable_and_wanderer_templates">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()"/>
			<template name="NPCCharacter.spcwandererzbccaptorvakkenmaiden" />
		</xsl:copy>
	</xsl:template>  -->
</xsl:stylesheet>