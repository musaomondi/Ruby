require 'sinatra'
require 'movie' 
require 'movie_store'

store = MovieStore.new('movies.yml')

get('/movies') do
  @movies = store.all
  erb :index #load "views/index.erb"
end

get('/movies/new') do
  erb :new
end

post ('/movies/create') do #handle POst request for '/movies/create'
  @movie = Movie.new #create a new movie instance
  #assign contents of the form fields to attributes of the object
  @movie.title = params['title']
  @movie.director = params['director']
  @movie.year = params['year']
  store.save(@movie)
  redirect '/movies/new'
  
  get ('/movies/:id') do
    "Recieved a request for movie ID: #{params['id']}"
  end
end
