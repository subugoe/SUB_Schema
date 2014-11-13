SUB_Schema
==========

## Ziele/Ideen
* Definition einheitlicher Mappings von 'Schema xyz' (z.B. PICA, METS, MODS, ...) nach SUB TEI (SUB Schema) und Implementierung entsprechender Transformationen.
* Sicherung der Interoperabilität auf Basis eines gemeinsamen/einheitlichen Schemas, so dass sich "Anwendungen" auf Daten im 'SUB Schema' verlassen können. Änderungen an den Datenquellen müssen über das Mapping von/nach 'SUB Schema' abgefangen werden.
* Festlegung eines einheitlichen Schemas für Datenlieferungen, ggf. ist eine Transformation bei Lieferung erforderlich (ist zu klären).
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
* TEI als alternatives Austauschformat zu METS/MODS
    * Enthält alles was auch im METS/MODS steckt
    
## Anforderungen, Anwendungsfälle
* Integration in den OCR-Dienst um den Output mit bibliographischen Metadaten anzureichern

## Mappings
* Definitionen werden im Unterverzeichnis 'mappings/' abgelegt.
* Die Datei 'mappings/Mappings2TEI.xsl' enthält Definitionen für:
    * PICA nach TEI (Tabelle 'PICA2TEI') und
    * MODS nach TEI (Tabelle 'MODS2TEI').
* Transformation in umgekehrter Richtung sind mit Verlusten behaftet
    * es ist sinnvoller, die Daten dann der Korrektheit/Volständigkeit wegen aus dem "Katalog" zu beziehen

## Implementierungen der Transformationen
* Transformationen werden in jeweils eigenen Unterverzeichnissen 'x2y' abgelegt.
* Die Transformationen 'MODS2TEI' und 'PICA2TEI' wurden mit 'Altova MapForce' modelliert. Die Modellierung bietet den Vorteil, dass die Transformationen leicht nachvollziehbar sind und Erweiterungen bzw. Änderungen über das Modell vorgenommen werden können. Die Transformationen sind 'XSLT 2.0' basiert, d.h. nutzen Funktionen dieser Version.
    * 'MODS2TEI' Transformationen sind in dem Verzeichnis 'mods2tei/' enthalten. Das abschliessende Modell wird in der Datei 'mods2tei.mfd' beschrieben. Benutzerdefinierte Funktionen sind Teil des Modells.
    * 'PICA2TEI' Transformationen sind in dem Verzeichnis 'pica2tei/' enthalten. Das abschliessende Modell wird ist der Datei 'pica2tei.mfd' beschrieben. Benutzerdefinierte Funktionen sind Teil des Modells.
    * Als Input-Schema wurde 'pica-xml-v1-0.xsd' angenommen (siehe auch: [XML Schema for XML representation of PICA data](https://github.com/gbv/PICA-Record/blob/master/pica-xml-v1-0.xsd)).
    * Die Mappings wurden auf das Ziel-Schema 'tei_lite.xsd' abgebildet (siehe auch: [tei-lite Schema](http://www.tei-c.org/release/xml/tei/custom/schema/xsd/tei_lite.xsd))
    * Zugehörige XSLT-Stylesheets liegen im Unterverzeichnis 'x2y/xslt/'.
* Mit dem jruby-Skript *converter.rb* kann die Transformation durchgeführt werden, die zu transformierenden Ressourcen sind in der Datei *resources.yml* festgelegt.
    * Aufruf: **./converter.rb <xslt-stylesheet.xsl>** 
       	* wenn kein Stylesheet übergeben wird, wird das Pica-Stylesheet verwendet. 
    * das Skript erwartet das XSLT Stylesheet als Aufrufparameter
    * es müssen folgende gem's installiert sein
	* gem install saxon-xslt
	* gem install nokogiri -- --use-system-libraries




