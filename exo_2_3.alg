<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_SINON" texte="exercice 2.3 IMC"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2defaut="" F2para="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" totalBoucles="5000000" nbDecimales="8" arrondiAuto="vrai" epaisseurLigne="2" maxBoucle="500000" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#POIDS" algoitem="POIDS EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#TAILLES" algoitem="TAILLES EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#IMC" algoitem="IMC EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez votre poids en Killogrammes#0" algoitem="AFFICHER &quot;Entrez votre poids en Killogrammes&quot;"/>
        <item code="2#POIDS#pasliste" algoitem="LIRE POIDS"/>
        <item code="4#Entrez votre tailles centimère#0" algoitem="AFFICHER &quot;Entrez votre tailles centimère&quot;"/>
        <item code="2#TAILLES#pasliste" algoitem="LIRE TAILLES"/>
        <item code="4#Votre IMC EST de#0" algoitem="AFFICHER &quot;Votre IMC EST de&quot;"/>
        <item code="20#IMC=POIDS/(TAILLES*TAILLES)#0" algoitem="AFFICHERCALCUL IMC=POIDS/(TAILLES*TAILLES)"/>
        <item code="6#IMC&lt;18.5" algoitem="SI (IMC&lt;18.5) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#insufiance ponderale#0" algoitem="AFFICHER &quot;insufiance ponderale&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#IMC>=30" algoitem="SI (IMC>=30) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#obesiter#0" algoitem="AFFICHER &quot;obesiter&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
