require 'sinatra'
require 'movie'

get('/movies') do
  @movies = []
  @movies[0] = Movie.new #set up a new movie object
  @movies[0].title = "Jaws"
  @movies[1] = Movie.new
  @movies[1].title = "Alien"
  @movies[2] = Movie.new
  @movies[2].title = "Terminator"
  erb :index #load "views/index.erb"
end

get('/movies/new') do
  erb :new
end

post ('/movies/create') do #handle POst request for '/movies/create'
  "Recieved: #{params.inspect}" #send a string containing the form data back to the browser
end
