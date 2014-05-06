SUB_Schema
==========

## Ziele
* Definition einheitlicher Mappings von 'Schema xyz' (z.B. PICA, METS, MODS, ...) nach 'SUB Schema' und Implementierung entsprechender Transformationen.
* Absicherung von Clients bzw. Anwendungen, so dass sie sich auf Daten im 'SUB Schema' verlassen. Änderungen an den Datenquellen werden durch das 'SUB Schema' gekapselt.
* Festlegung eines einheitlichen Schemas für Datenlieferungen, ggf. ist eine Transformation bei Lieferung erforderlich (ist noch zu klären).
* Förderung der Interoperabilität auf unterschiedlichen Ebenen:
    * Datenquellen
    * Anwendungen
    * Abteilungen
    * Internen/Externen Anforderungen
    * etc.
* Integration von Datenquellen, Vereinheitlichung von Unterschieden und Abbildung von Beziehungen:
    * Beziehung METS -> TEI
    * Beziehung log./phys. METS Strukturbeschreibung -> TEI DIVs
    * Variationen: TEI Dokument oder eingebettet in ein METS Dokument

## Anforderungen

## Mappings
* Definitionen werden im Unterverzeichnis 'mappings/' abgelegt.
* Die Datei 'Mappings2TEI.xsl' enthält Definitionen für:
    * PICA nach TEI (Tabelle 'PICA2TEI') und
    * MODS nach TEI (Tabelle 'MODS2TEI').
* Später ist auch die Transformation in umgekehrter Richtung zu implementieren:
    * TEI nach MODS
    * TEI nach PICA

## Implementierungen der Transformationen
* Transformationen werden in jeweils eigenen Unterverzeichnissen 'x2y' abgelegt.
* Die Transformation 'MODS2TEI' und 'PICA2TEI' wurde mit 'Altova MapForce' modelliert. Die Modellierung bietet den Vorteil, das die Transformation leicht nachvollziehbar ist und Erweiterungen bzw. Änderungen über das Modell vorgenommen werden können.
    * 'MODS2TEI' Transformationen sind in dem Verzeichnis 'mods2tei/' enthalten. Das abschliessende Modell wird ist der Datei 'mods2tei.mfd' beschrieben.
    * 'PICA2TEI' Transformationen sind in dem Verzeichnis 'pica2tei/' enthalten. Das abschliessende Modell wird ist der Datei 'pica2tei.mfd' beschrieben.
    * Als Input-Schema wurde 'pica-xml-v1-0.xsd' angenommen (siehe [XML Schema for XML representation of PICA data](https://github.com/gbv/PICA-Record/blob/master/pica-xml-v1-0.xsd)).
    * Zugehörige XSLT-Stylesheets liegen im Unterverzeichnis 'x2y/xslt/'. Das abschließende Modell integriert benutzerdefinierte Funktionen, die Teiltransformationen beschreiben. Bei 'doppel-klick' auf den Header des Modellelements (der Funktion) wird automatisch das zugehörige Modell geladen.


## Konfiguration
* Ggf. erforderliche Änderungen an den Modellen
* Die Modelle verwenden teilweise absolute Pfadangaben, so dass die Modelle nach dem auschecken (Git) nicht direkt genutzt werden können.
    * Fehler werden im Modell durch rote Umrandung der Modellelemente und Kanten angezeigt.
    * Änderungen der Pfade sind möglich über: 'rechts-klick' des Modellelements-Header -> Eigenschaften
    * Zudem besteht die Möglichkeit das Modell zu validieren: Menue-Leiste -> Butten mit grünem Häkchen




