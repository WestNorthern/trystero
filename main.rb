require 'sinatra'
require 'sinatra/activerecord'
require './models'

set :database, "sqlite3:main.sqlite3"

get '/' do
	params[:controller] = 'home'
	erb :home
end

get '/friends' do
	params[:controller] = 'friends'
	erb :friends
end

get '/login' do
	erb :login
end

get '/signup' do
	erb :signup
end

get '/profile' do
	params[:controller] = 'profile'
	erb :profile
end

get '/logout' do

end