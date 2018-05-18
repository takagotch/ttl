require 'rdf'
require 'rdf/turtle'
require 'rdf/json'

TTL="https://www.reinhardt-testsystem.de/english/climate_sensors/weatherstations/technical_data_weatherstations.php"

json = RDF::Writer.for(:json).buffer do |writer|
  RDF::Reader.open(TTL) do|readder|
    reader.each do |stmt|
      writer << stmt
    end
  end
end

puts json

