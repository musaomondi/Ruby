require 'sinatra'
get('/movies') do
  erb :index #load "views/index.erb"
  'Coming Soon...'
end
