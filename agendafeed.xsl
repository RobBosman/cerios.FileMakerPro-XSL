<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.filemaker.com/fmpxmlresult" version="1.0">

	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="no"/>

	<!--
		Main entry point.
	-->
	<xsl:template match="/">
		<xsl:apply-templates select="events/*"/>
	</xsl:template>

	<!--
		Write a table (with records).
	-->
	<xsl:template match="ngsagenda">
		<xsl:variable name="numRecords" select="count(event)"/>
		<FMPXMLRESULT>
			<ERRORCODE>0</ERRORCODE>
			<PRODUCT BUILD="03-21-2013" NAME="FileMaker" VERSION="ProAdvanced 12.0v4"/>
			<DATABASE NAME="NGS Administratie - Test.fmp12" LAYOUT="" DATEFORMAT="D-m-yyyy" TIMEFORMAT="k:mm:ss " RECORDS="{$numRecords}"/>
			<METADATA>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="AanmeldenBij" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="AccreditatiePunten" TYPE="NUMBER"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="Actief" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="100" NAME="Afdelingen" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="Dagdeel" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="Docent" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="Duur" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="EindDatum" TYPE="NUMBER"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="EindeInschrijfDatum" TYPE="NUMBER"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="Gecommiteerdeaanwezig" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="Id" TYPE="NUMBER"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="Locatie" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="MasseursNodig" TYPE="NUMBER"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="Omschrijving" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="OpleiderEmail" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="OpleiderTelefoonNummer" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="OpleiderWebsite" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="Organisatie" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="OrganisatieEmail" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="Overig" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="PlekkenBeschikbaar" TYPE="NUMBER"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="Prijs" TYPE="NUMBER"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="StartDatum" TYPE="NUMBER"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="Thema" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="Titel" TYPE="TEXT"/>
				<FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="Url" TYPE="TEXT"/>
			</METADATA>
			<RESULTSET FOUND="{$numRecords}">
				<xsl:apply-templates select="event"/>
			</RESULTSET>
		</FMPXMLRESULT>
	</xsl:template>

	<!--
		Write a record (with columns).
	-->
	<xsl:template match="event">
		<ROW RECORDID="{id}">
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="aanmeldenbij"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="accreditatiepunten"/>
				<xsl:with-param name="dataType" select="'NUMBER'"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="actief"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="afdelingen"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="dagdeel"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="docent"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="duur"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="einddatum"/>
				<xsl:with-param name="dataType" select="'DATE'"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="eindeinschrijfdatum"/>
				<xsl:with-param name="dataType" select="'DATE'"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="gecommiteerdeaanwezig"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="id"/>
				<xsl:with-param name="dataType" select="'NUMBER'"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="locatie"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="masseursnodig"/>
				<xsl:with-param name="dataType" select="'NUMBER'"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="omschrijving"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="opleideremail"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="opleidertelefoonnummer"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="opleiderwebsite"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="organisatie"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="organisatieemail"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="overig"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="plekkenbeschikbaar"/>
				<xsl:with-param name="dataType" select="'NUMBER'"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="prijs|kosten"/>
				<xsl:with-param name="dataType" select="'NUMBER'"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="startdatum"/>
				<xsl:with-param name="dataType" select="'DATE'"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="thema"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="titel"/>
			</xsl:call-template>
			<xsl:call-template name="writeCol">
				<xsl:with-param name="dataNode" select="url"/>
			</xsl:call-template>
		</ROW>
	</xsl:template>

	<!--
		Write a column with data field(s).
	-->
	<xsl:template name="writeCol">
		<xsl:param name="dataNode"/>
		<xsl:param name="dataType" select="'TEXT'"/>
		<COL>
			<xsl:choose>
				<xsl:when test="count($dataNode/*) > 0">
					<xsl:for-each select="$dataNode/*">
						<xsl:call-template name="writeData">
							<xsl:with-param name="dataNode" select="."/>
							<xsl:with-param name="dataType" select="$dataType"/>
						</xsl:call-template>
					</xsl:for-each>
				</xsl:when>
				<xsl:otherwise>
					<xsl:call-template name="writeData">
						<xsl:with-param name="dataNode" select="$dataNode"/>
						<xsl:with-param name="dataType" select="$dataType"/>
					</xsl:call-template>
				</xsl:otherwise>
			</xsl:choose>
		</COL>
	</xsl:template>

	<!--
		Write a single data field.
	-->
	<xsl:template name="writeData">
		<xsl:param name="dataNode"/>
		<xsl:param name="dataType"/>
		<DATA>
			<!--
			<xsl:choose>
				<xsl:when test="$dataNode">
					<xsl:comment> &lt;<xsl:value-of select="name($dataNode)"/>&gt; </xsl:comment>
				</xsl:when>
			</xsl:choose>
			-->
			<xsl:choose>
				<xsl:when test="$dataType = 'TEXT' and normalize-space($dataNode) != ''">
					<xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
					<xsl:value-of select="$dataNode" disable-output-escaping="yes"/>
					<xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
				</xsl:when>
				<xsl:when test="$dataType = 'NUMBER'">
					<xsl:value-of select="translate(normalize-space($dataNode), ',', '.')"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="normalize-space($dataNode)"/>
				</xsl:otherwise>
			</xsl:choose>
		</DATA>
	</xsl:template>

	<!--
		Ignore all non-matching nodes.
	-->
	<xsl:template match="@*|node()"/>

</xsl:stylesheet>
