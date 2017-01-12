require 'base'
require 'venue'

f = EXFoursquare::Base.new('HH0W0R34BDBXBU44OOXNIWT0VF4EBR0G4I0R1CDRDY5UNSPB', 'KSWT0P3UATRZUOFZO203YX5KR24U0I3XXXFB0QXXOA2TCNAD')
#@venues = f.venues.search({:ll => "48.857,2.349"})
@venues = f.venues.search(:near => "Chicago")
