class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace #set up attribute accessors
  def initialize(name, options) #the hash parameter
    self.name=name 
    #get values from the hash instead of directly from parameters
    self.age=options[:age]
    self.occupation=options[:occupation]
    self.hobby=options[:hobby]
    self.birthplace=options[:birthplace]
  end
end

candidate = Candidate.new("Carl Barnes", :age=>49, :occupation=> "Attorney", :hobby=> "Lacrose", :birthplace=> "Miami")
p candidate
