require 'movie' #load the movie class
require 'yaml/store' #load the YALM Store class

store = YAML::Store.new('test.yml') #create a store that writes objects to a file named test.yml

first_movie = Movie.new #create a movie object
first_movie.title ="Spirited Away"
first_movie.director = "Kevin Ochieng"
first_movie.year =2001

second_movie = Movie.new
second_movie.title = "Inception"
second_movie.director = "Chris Nolan"
second_movie.year = 2010

store.transaction do #prevent other programs from writing to the file
  #store the two movies
  store["Spirited Away"] = first_movie
  store["Inception"] = second_movie

  p store["Inception"] #print one of the store's values
end
