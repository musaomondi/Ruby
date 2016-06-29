class CelestialBody
  attr_accessor :type, :name
end
altair = CelestialBody.new
altair.name = "altair"
altair.type = 'star'
polaris=altair
polaris.name='Polaris'
vega=polaris
vega.name='Vega'
puts altair.name, polaris.name, vega.name
