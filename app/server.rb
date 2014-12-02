require 'data_mapper'
require './lib/post'
require 'sinatra'

require_relative 'data_mapper_setup'

get '/' do
  @posts= Posts.all
  erb :index
end



