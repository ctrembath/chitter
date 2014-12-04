require 'sinatra'
require 'data_mapper'
require './lib/posts'

require_relative 'data_mapper_setup'

get '/' do
  @posts = Post.all
  erb :index
end




