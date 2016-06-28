class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace #set up attribute accessors
  def initialize(name, age, occupation, hobby, birthplace) #set up Candidates.new to take arguments
    #use the parameters to set the object attribute
    self.name=name
    self.age=age
    self.occupation=occupation
    self.hobby=hobby
    self.birthplace=birthplace
  end
end

def print_summary(candidate)
  puts "Candidate: #{candidate.name}"
puts "Age: #{candidate.age}"
  puts "Occupation: #{candidate.occupation}"
  puts "Hobby: #{candidate.hobby}"
  puts "Birthplace: #{candidate.birthplace}"
end

candidate = Candidate.new("Carl Barnes", 49, "Attorney", nil, "Miami")
print_summary(candidate)
