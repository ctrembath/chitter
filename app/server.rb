require 'sinatra'
require 'data_mapper'
require './lib/posts'

require_relative 'data_mapper_setup'

get '/' do
  @posts = Post.all
  erb :index
end

get '/posts/new' do
 erb :"posts/new"
end

post '/posts' do
  story = params["story"]
  Post.create(:story => story)
  redirect to('/')
end




