<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="ETAT_CIVIL">
<tr>
<td><font color="green" size="15pt">
    <xsl:value-of select="PRENOM"/>
    </font> 
 
<font color="green" size="15pt">
    <xsl:value-of select="NOM"/>
    </font> 
</td>
</tr>
<hr/>
<h4><font color="green">DETAILS PERSONNELS</font></h4>
<font weight="bold" size="4pt">Civilité:</font> <br/>
<xsl:value-of select="CIVILITE"/> <br/>
<font weight="bold" size="4pt">Date de naissance:</font> <br/>
<xsl:value-of select="DATE_NAIS"/> <br/>
<font weight="bold" size="4pt">Situation Matrimonial:</font> <br/>
<xsl:value-of select="SIT_MAT"/> <br/>
</xsl:template>

<xsl:template match="CONTACT">

<font weight="bold" size="4pt">Adresse:</font> <br/>
<xsl:value-of select="ADRESSE"/> <br/>
<font weight="bold" size="4pt">Numéro de téléphone:</font> <br/>
<xsl:value-of select="TEL"/> <br/>
<font weight="bold" size="4pt">Adresse Electronique:</font> <br/>
<xsl:value-of select="AD_ELEC"/> <br/> <hr/>
</xsl:template>

<xsl:template match="INF_PERSO">
<xsl:apply-templates select="ETAT_CIVIL"/>
<xsl:apply-templates select="CONTACT"/>
</xsl:template>

<xsl:template match="INFO_EDU">
    <h4><font color="green">FORMATIONS</font></h4>
    <font weight="bold" size="4pt">Diplomes:</font> <br/>
      <xsl:value-of select="DIPLOMES"/><br/>
    <font weight="bold" size="4pt">Qualifications:</font> <br/> 
      <xsl:value-of select="QUALIFICATIONS"/><br/>
    <hr/>
</xsl:template>

<xsl:template match="INF_PROF">
   <h4><font color="green">EXPERIENCES PROFESSIONNELLES</font></h4>
   <font weight="bold" size="4pt">Expériences:</font> <br/>
      <xsl:value-of select="EXPERIENCE"/><br/>
   <font weight="bold" size="4pt">Nature de l'employé actuel:</font> <br/> 
      <xsl:value-of select="NAT_EMPAC"/><br/>
   <font weight="bold" size="4pt">Employeur actuel:</font> <br/>
      <xsl:value-of select="EMPLOYEUR_AC"/><br/>
   <font weight="bold" size="4pt">Durée:</font> <br/> 
      <xsl:value-of select="DUREE"/><br/>
   <font weight="bold" size="4pt">Désignation:</font> <br/>
      <xsl:value-of select="DESIGNATION"/><br/>
   <font weight="bold" size="4pt">Compétences:</font> <br/>
      <xsl:value-of select="COMPETENCES"/><br/>
    <hr/>
</xsl:template>

<xsl:template match="AUTRES">
   <h4><font color="green">AUTRES INFORMATIONS</font></h4>
     <font weight="bold" size="4pt">Préférences Lieux:</font> <br/>
      <xsl:value-of select="PREF_LIEUX"/><br/>
     <font weight="bold" size="4pt">Réalisations:</font> <br/> 
      <xsl:value-of select="REALISATIONS"/><br/> 
</xsl:template>

<xsl:template match="/">
<xsl:for-each select="CV/INFORMATIONS">
 <xsl:apply-templates select="INF_PERSO"/>
 <xsl:apply-templates select="INF_PROF"/>
 <xsl:apply-templates select="INFO_EDU"/>
 <xsl:apply-templates select="AUTRES"/>

</xsl:for-each>
</xsl:template>
</xsl:stylesheet>