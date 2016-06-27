def find_adjective(string)
  words = string.split(" ") #break the string into an array of words
  index = words.find_index("is") #find the index of the word "is"
  words[index+1] #return the word following "is"
end


