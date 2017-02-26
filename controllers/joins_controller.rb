require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/join.rb')
require_relative('../models/pose.rb')
require_relative('../models/sequence.rb')

get '/joins' do
  @joins = Join.all
  erb (:"joins/index")
end

get '/joins/new' do
  @poses = Pose.all
  @sequences = Sequence.all
  erb(:"joins/new")
end

post '/joins' do
  join = Join.new(params)
  join.save
  redirect to("/joins")
end

get '/joins/:id' do
  @join = Join.find(params[:id])
  erb(:"joins/show")
end

post '/joins/:id/delete' do
  join = Join.find(params[:id])
  join.delete
  redirect to "/joins"
end