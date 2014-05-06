@echo off

RaptorXML xslt --xslt-version=2 --input="pica_xml_example.xml" --output="tei_lite.xml" %* "MappingMapTotei_lite.xslt"
IF ERRORLEVEL 1 EXIT/B %ERRORLEVEL%
