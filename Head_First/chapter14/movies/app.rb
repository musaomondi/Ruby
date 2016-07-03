require 'sinatra'
require 'movie'

get('/movies') do
  @movie = Movie.new #set up a new movie object
  @movie.title = "Jaws"
  erb :index #load "views/index.erb"
  'Coming Soon...'
end
