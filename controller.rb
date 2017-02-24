require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/pose.rb')

get '/poses' do
  @poses = Pose.all
  erb(:index)
end
