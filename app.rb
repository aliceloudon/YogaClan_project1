require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/poses_controller')
require_relative('controllers/sequences_controller')
require_relative('controllers/poses_sequences_controller')

get '/' do
  erb(:index)
end

get '/about' do
  erb(:about)
end