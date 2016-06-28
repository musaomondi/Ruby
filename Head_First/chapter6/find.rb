def find_adjective(string)
  words = string.split(" ") #break the string into an array of words
  index = words.find_index("is") #find the index of the word "is"
  words[index+1] #return the word following "is"
end

lines = [] #create this variable outside the class
File.open("reviews.txt") do |review_file| #open file and automatically close it
lines=review_file.readlines #read every line in the file into an array
end

#find lines that include the movie name (Truncated)
relevant_lines = lines.find_all { |line| line.include?("Truncated") }
#exclude reviewer bylines
reviews = relevant_lines.reject { |line| line.include?("--") }

adjectives = reviews.map do |review| #process each review
  adjective = find_adjective(review) #find the adjective
  "'#{adjective.capitalize}'"
end

puts "The critics agree, Truncated is:"
puts adjectives
