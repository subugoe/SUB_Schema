@echo off

RaptorXML xslt --xslt-version=2 --input="test_mods1.xml" --output="tei_lite.xml" %* "MappingMapTotei_lite.xslt"
IF ERRORLEVEL 1 EXIT/B %ERRORLEVEL%
