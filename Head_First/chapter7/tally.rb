#create a variable that will still be accessible after the block
lines = []
#open the file and pass it to the block.
File.open("votes.txt") do |file|
  lines=file.readlines
end

votes = Hash.new(0) #create a new hash with a default object of "0"
lines.each do |line|
  name = line.chomp #remove the newline character
  name.upcase! #change the name to all caps before using it as a hash key
    votes[name] +=1 #increment whatever the value is returned
end

p votes
