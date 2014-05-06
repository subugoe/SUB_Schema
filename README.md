SUB_Schema
==========

# Ziele
## Es werden einheitliche Mappings von 'Schema xyz' (TEI, PICA, METS, MODS, ...) nach 'SUB Schema' definiert und entsprechende Transformationen implementiert.
## Clients können sich auf Daten im 'SUB Schema' verlassen.
## Lieferungen werden im 'Sub Schema' erwartet, bzw. bei Lieferung entsprechend transformiert (ist noch zu klären).
## Das 'SUB Schema' fördert die Interoperabilität auf unterschiedlichen Ebenen: Datenquellen, Anwendungen, Abteilungen, Internen/Externen Anforderungen, etc.
## Über das 'SUB Schema' werden Datenquellen integriert und Unterschiede vereinheitlicht.
### Beziehung METS -> TEI
### Beziehung log./phys. METS Strukturbeschreibung -> TEI DIVs
### Variationen: TEI Dokument oder eingebettet in ein METS Dokument

# Anforderungen

# Mappings
## Definitionen werden im Unterverzeichnis 'mappings' abgelegt.
## Die Datei 'Mappings2TEI.xsl' enthält Definitionen für
### PICA nach TEI (Tabelle 'PICA2TEI') und
### MODS nach TEI (Tabelle 'MODS2TEI').
## Später
### TEI nach MODS
### TEI nach PICA
# Implementierungen der Transformationen
## Transformationen werden in jeweils eigenen Unterverzeichnissen 'x2y' abgelegt.
## Für die Transformation 'MODS2TEI' und 'PICA2TEI' wurde mit Altova MapForce zur modellierung verwendet. Die Modellierung bietet den Vorteil, das die Transformation relativ leicht nachvollziehbar ist und Erweiterungen bzw. Änderungen über das Modell vorgenommen werden können.
### 'MODS2TEI' Transformationen sind in dem Verzeichnis 'mods2tei/' enthalten. Das abschliessende Modell wird ist der Datei 'mods2tei.mfd' beschrieben, das zugehörige XSLT Stylesheet liegt im Unterverzeichnis 'mods2tei/xslt/'. Das Modell integriert benutzerdefinierte Funktionen, die Teiltransformationen beschreiben.
### 'PICA2TEI' Transformationen sind in dem Verzeichnis 'pica2tei/' enthalten. Das abschliessende Modell wird ist der Datei 'pica2tei.mfd' beschrieben, das zugehörige XSLT Stylesheet liegt im Unterverzeichnis 'pica2tei/xslt/'. Das Modell integriert benutzerdefinierte Funktionen, die Teiltransformationen beschreiben.


# Konfiguration
## Ggf. erforderliche Änderungen an den Modellen
### Die Modelle verwenden teilweise absolute Pfadangaben, so dass die Modelle nach dem auschecken (Git) nicht direkt genutzt werden können.
#### Fehler werden im Modell durch rote Umrandung der Modellelemente und Kanten angezeigt.
##### Durch 'rechts-klick' des Modellelements-Header -> Eigenschaften kommt man zur
#### Zudem besteht die Möglichkeit das Modell zu validieren: Menue-Leitse -> Butten mit grünem Häkchen
##### Siehe Ausgabe im Meldungsfenster



