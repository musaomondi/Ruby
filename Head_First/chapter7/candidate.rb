class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace #set up attribute accessors
  
  def initialize(name, age:nil, occupation:nil, hobby:nil, birthplace:"Sleepy Hollow" )

    self.name=name 
    #get values from the hash instead of directly from parameters
    self.age=age
    self.occupation=occupation
    self.hobby=hobby
    self.birthplace=birthplace
  end
end

candidate = Candidate.new("Carl Barnes", age: 49, birthplace: "Miami")
p candidate
