#create a variable that will still be accessible after the block
lines = []
#open the file and pass it to the block.
File.open("votes.txt") do |file|
  lines=file.readlines
end
