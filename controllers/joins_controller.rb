require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/join.rb')

get '/joins' do
  @joins = Join.all
  erb (:"joins/index")
end