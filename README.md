SUB_Schema
==========

## Ziele
* Definition einheitlicher Mappings von 'Schema xyz' (z.B. PICA, METS, MODS, ...) nach 'SUB Schema' und Implementierung entsprechender Transformationen.
* Absicherung von Clients bzw. Anwendungen, so dass sie sich auf Daten im 'SUB Schema' verlassen. Änderungen an den Datenquellen werden durch das 'SUB Schema' gekapselt.
* Festlegung eines einheitlichen Schemas für Datenlieferungen, ggf. ist eine Transformation bei Lieferung erforderlich (ist noch zu klären).
* Förderung der Interoperabilität auf unterschiedlichen Ebenen:
    * Datenquellen
    * Anwendungen
    * Abteilungen/Projektpartnern
    * (Internen/Externen Anforderungen)
    * etc.
* Integration von Datenquellen, Vereinheitlichung von Unterschieden und Abbildung von Beziehungen:
    * Beziehung METS -> TEI
    * Beziehung log./phys. METS Strukturbeschreibung -> TEI DIVs
    * Variationen: TEI Dokument oder eingebettet in ein METS Dokument

## Anforderungen

## Mappings
* Definitionen werden im Unterverzeichnis 'mappings/' abgelegt.
* Die Datei 'mappings/Mappings2TEI.xsl' enthält Definitionen für:
    * PICA nach TEI (Tabelle 'PICA2TEI') und
    * MODS nach TEI (Tabelle 'MODS2TEI').
* Später ist auch die Transformation in umgekehrter Richtung zu implementieren:
    * TEI nach MODS
    * TEI nach PICA

## Implementierungen der Transformationen
* Transformationen werden in jeweils eigenen Unterverzeichnissen 'x2y' abgelegt.
* Die Transformationen 'MODS2TEI' und 'PICA2TEI' wurden mit 'Altova MapForce' modelliert. Die Modellierung bietet den Vorteil, dass die Transformationen leicht nachvollziehbar sind und Erweiterungen bzw. Änderungen über das Modell vorgenommen werden können. Die Transformationen sind 'XSLT 2.0' basiert.
    * 'MODS2TEI' Transformationen sind in dem Verzeichnis 'mods2tei/' enthalten. Das abschliessende Modell wird ist der Datei 'mods2tei.mfd' beschrieben. Benutzerdefinierte Funktionen sind Teil des Modells.
    * 'PICA2TEI' Transformationen sind in dem Verzeichnis 'pica2tei/' enthalten. Das abschliessende Modell wird ist der Datei 'pica2tei.mfd' beschrieben. Benutzerdefinierte Funktionen wurden in separaten Modellen erstellt. Das abschließende Modell integriert diese Funktionen, die Teiltransformationen beschreiben. Bei 'doppel-klick' auf den Header des Modellelements (der Funktion) wird automatisch das zugehörige Modell geladen.
    * Als Input-Schema wurde 'pica-xml-v1-0.xsd' angenommen (siehe auch: [XML Schema for XML representation of PICA data](https://github.com/gbv/PICA-Record/blob/master/pica-xml-v1-0.xsd)).
    * Als Ziel-Schema wurde 'tei_lite.xsd' angenommen (siehe auch: [tei-lite Schema](http://www.tei-c.org/release/xml/tei/custom/schema/xsd/tei_lite.xsd))
    * Zugehörige XSLT-Stylesheets liegen im Unterverzeichnis 'x2y/xslt/'.


## Konfiguration
* Ggf. erforderliche Änderungen an den Modellen
    * Sollten die Modelle nach dem auschecken (Git) nicht direkt genutzt werden können, so kann das an Absoluten Pfadangaben liegen. Derartige Fehler werden im Modell durch rote Umrandung der Modellelemente und Kanten angezeigt. Änderungen der Pfade sind möglich über: 'rechts-klick' des Modellelements-Header -> Eigenschaften. Zudem besteht die Möglichkeit das Modell zu validieren: Menue-Leiste -> Butten mit grünem Häkchen.




