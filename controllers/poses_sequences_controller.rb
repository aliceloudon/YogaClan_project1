require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/pose_sequence.rb')
require_relative('../models/pose.rb')
require_relative('../models/sequence.rb')

get '/poses_sequences' do
  @poses_sequences = PoseSequence.all
  erb (:"poses_sequences/index")
end

get '/poses_sequences/new' do
  @poses = Pose.all
  @sequences = Sequence.all
  erb(:"poses_sequences/new")
end

post '/poses_sequences' do
  pose_sequence = PoseSequence.new(params)
  pose_sequence.save
  redirect to("/poses_sequences")
end

get '/poses_sequences/:id' do
  @pose_sequence = PoseSequence.find(params[:id])
  erb(:"poses_sequences/show")
end

post '/poses_sequences/:id/delete' do
  pose_sequence = PoseSequence.find(params[:id])
  pose_sequence.delete
  redirect to "/poses_sequences"
end