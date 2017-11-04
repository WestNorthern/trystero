require 'sinatra'
require 'sinatra/activerecord'
require './models'

set :database, "sqlite3:main.sqlite3"
set :sessions, true

### Function for checking if the session is active

def current_user
  if session[:user_id]
    User.find(session[:user_id])
  end
end

get '/' do
	@user = current_user
	if @user.nil?
		redirect '/login'
	end
	params[:controller] = 'home'
	erb :home
end

get '/friends' do
	@user = current_user
	params[:controller] = 'friends'
	erb :friends
end

get '/login' do
	@user = current_user
	if @user 
		redirect '/'
	end
	erb :login
end

post '/login' do
	# @user = User.find_by(email: params[:email], password: params[:password])
	@user = User.find_by(params[:user])
	if @user
		puts "working"
		session[:user_id] = @user.id #insecure, but works
		redirect '/'
	else
		redirect '/login'
		puts "Not working"
	end
end

get '/signup' do
	erb :signup
end

post '/signup' do
	# user_hash = {name: params[:name], email: params[:email], password: params[:password]}
	@user = User.create(params[:user])
	
	p params
	session[:user_id] = @user.id


	erb :home
end

get '/profile' do
	@user = current_user
	params[:controller] = 'profile'
	erb :profile
end

get '/logout' do
	session[:user_id] = nil #logged out
	redirect '/'
end

