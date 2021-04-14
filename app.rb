require 'sinatra'
require 'sinatra/reloader' if development?

set :port, 9495

get '/' do
  "Hello World"
  "Lovely day"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end