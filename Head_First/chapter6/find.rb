def find_adjective(string)
  words = string.split(" ") #break the string into an array of words
  index = words.find_index("is") #find the index of the word "is"
  words[index+1] #return the word following "is"
end

lines = [] #create this variable outside the class
File.open("reviews.txt") do |review_file| #open file and automatically close it

