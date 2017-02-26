require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/poses_controller')
require_relative('controllers/sequences_controller')
require_relative('controllers/joins_controller')

get '/' do
  erb(:index)
end