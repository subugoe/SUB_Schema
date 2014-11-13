#!/usr/bin/env jruby

require "nokogiri"
require 'open-uri'
require 'saxon-xslt'
require 'yaml'

# lade props aus resourcen.yml
obj = YAML.load_file('resources.yml')

xslt = "/Users/jpanzer/Documents/projects/konzepte/Sub-Schema/my/pica2tei/xslt/MappingMapTotei_lite.xslt"

if !$ARGV.empty?
  xslt = $ARGV[0]
end


# erstelle transformations objekt mit xslt
transformer = Saxon.XSLT(File.open(xslt))

# iteriere über properties (aus resourcen.yaml)
obj.each_key { |k|


  # lade resource mit gegebener url (lade picaxml aus katalog per sru)
  doc = Nokogiri::XML(open(obj[k]["url"].to_s))

  # welchen record aus dem response?
  pos = [obj[k]["position"]][0]

  # schneide den teilbaum record aus dem response (xslt erwartet pica:record, keine rel. adressierung möglich)
  part = (doc.xpath('//pica:record', 'pica' => 'info:srw/schema/5/picaXML-v1.0')[Integer(pos)-1])


  # erzeuge saxon obejct mit teilbaum (input)
  input = Saxon.XML(part.to_xml)

  # transformation (output)
  output = transformer.transform(input)

  # um typ-spezifische verzeichnisse zu erzeugen und input/output dort abzulegen
  typ = obj[k]["typ"]


  if !Dir.exist?("data/#{typ}")
    Dir.mkdir("data/#{typ}")
  end

  f = File.open("data/#{typ}/input.xml", "w")
  f.puts input
  f.close

  f = File.open("data/#{typ}/output.xml", "w")
  f.puts output
  f.close

}

puts "Programmende"
