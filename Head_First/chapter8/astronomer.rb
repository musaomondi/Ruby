class CelestialBody
  attr_accessor :type, :name
end

bodies = Hash.new do |hash, key| #recieves a reference to the hash and the current key
body = CelestialBody.new #creates a new objact just for the current key
body.type = "planet"
hash[key] = body #ssigns to the hash and returns the new value
end

bodies['Mars'].name = 'Mars'
bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'moon'
bodies['Venus'].name = 'Venus'

p bodies
