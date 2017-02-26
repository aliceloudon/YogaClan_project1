require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/join.rb')

get '/joins' do
  @joins = Join.all
  erb (:"joins/index")
end

get '/joins/new' do
  erb(:"joins/new")
end

post '/joins' do
  join = Join.new(params)
  join.save
  redirect to "/joins"
end

post '/joins/:id/delete' do
  Join.delete(params[:id])
  redirect to "/joins"
end