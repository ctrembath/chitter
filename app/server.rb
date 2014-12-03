require 'data_mapper'
require 'sinatra'
require './lib/post'

require_relative 'data_mapper_setup'

get '/' do
  @posts= Post.all
  erb :index
end



