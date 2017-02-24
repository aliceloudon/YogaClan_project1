require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/pose.rb')

get '/poses' do
  @poses = Pose.all
  erb(:index)
end

get '/poses/new' do
  erb(:new)
end

post '/poses' do
  @pose = Pose.new(params)
  @pose.save
  redirect to '/poses'
end

get '/poses/:id' do
  @pose = Pose.find(params[:id])
  erb(:show)
end

get '/poses/:id/edit' do
  @pose = Pose.find(params[:id])
  erb(:edit)
end

post '/poses/:id' do
  pose = Pose.new(params)
  pose.update
  redirect to "/poses/#{pose.id}"
end

post '/poses/:id/delete' do
  pose = Pose.find(params[:id])
  pose.delete
  redirect to "/poses"
end