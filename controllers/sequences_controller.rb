require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/sequence.rb')
require_relative('../models/pose_sequence.rb')
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
      pose_sequence = PoseSequence.new({"pose_id" => value, "sequence_id" => sequence.id})
      pose_sequence.save    
    end
  end

  redirect to '/sequences'
end

get '/sequences/:id' do
  @sequence = Sequence.find(params[:id])
  @poses = @sequence.poses
  @sequence.add_time(@sequence.poses)
  erb(:"sequences/show")
end

get '/sequences/:id/edit' do
  @sequence = Sequence.find(params[:id])
  @poses = Pose.all
  erb(:"sequences/edit")
end

post '/sequences/:id' do
  sequence = Sequence.new(params)
  sequence.update
  sequence.delete_poses_sequences
    for key, value in params
      if key.include? "pose_id"
        pose_sequence = PoseSequence.new({"pose_id" => value, "sequence_id" => sequence.id})
        pose_sequence.save    
      end
    end

  redirect to "/sequences/#{sequence.id}"
end

post '/sequences/:id/delete' do
  sequence = Sequence.find(params[:id])
  sequence.delete
  redirect to "/sequences"
end