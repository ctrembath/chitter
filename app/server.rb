require 'sinatra'
require 'data_mapper'
require 'rack-flash'
require './lib/posts'
require './lib/user'

require_relative 'helpers/application'
require_relative 'data_mapper_setup'



enable :sessions
set :session_secret, 'super secret'
use Rack::Flash

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

get '/users/new' do
  @user = User.new
  erb :"users/new"
end

post '/users' do
  @user=User.create(:email => params[:email],
              :password => params[:password],
              :password_confirmation => params[:password_confirmation])
  if @user.save
  session[:user_id] = @user.id
  redirect to('/')

  else
    flash[:notie] = "Sorry, your passwords don't match"
    erb :"users/new"
  end
end




