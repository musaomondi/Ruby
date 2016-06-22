class Animal
  attr_accessor :name, :legs
  def move
    puts "#{name} moves #{legs} legs "
  end
end
class Domestic<Animal
  def move
    puts "4 legs"
  end
end

new=Domestic.new
new.name="punda"
new.legs= 2
new.move


