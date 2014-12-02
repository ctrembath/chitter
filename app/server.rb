require 'data_mapper'
require './lib/link'
require 'sinatra'

require_relative 'data_mapper_setup'

get '/users/new' do
  erb :index
end



