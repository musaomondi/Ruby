#create a variable that will still be accessible after the block
lines = []
#open the file and pass it to the block.
File.open("votes.txt") do |file|
  lines=file.readlines
end

votes = {} #set up an empty hash
lines.each do |line|
  name = line.chomp #remove the newline character
  if votes[name]
    votes[name] +=1 #increment the total for the current name
  else
    votes[name] = 1
  end
end

p votes
