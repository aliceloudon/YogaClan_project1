require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/sequence.rb')
require_relative('../models/join.rb')
require_relative('../models/pose.rb')

get '/sequences' do
  @sequences = Sequence.all
  erb(:"sequences/index")
end

get '/sequences/new' do  
  @sequences = Sequence.all
  @poses = Pose.all
  erb(:"sequences/new")
end

post '/sequences' do
  sequence = Sequence.new(params)
  sequence.save

  for key, value in params
    if key.include? "pose_id"
      join = Join.new({"pose_id" => value, "sequence_id" => sequence.id})
      join.save    
    end
  end

  redirect to '/sequences'
end

get '/sequences/:id' do
  @sequence = Sequence.find(params[:id])
  @poses = @sequence.poses
  erb(:"sequences/show")
end

get '/sequences/:id/edit' do
  @sequence = Sequence.find(params[:id])
  erb(:"sequences/edit")
end

post '/sequences/:id' do
  sequence = Sequence.new(params)
  sequence.update
  redirect to "/sequences/#{sequence.id}"
end

post '/sequences/:id/delete' do
  sequence = Sequence.find(params[:id])
  sequence.delete
  redirect to "/sequences"
end