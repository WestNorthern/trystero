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

post '/home' do
	params[:controller] = 'myposts'
	@user = current_user
	@content = params[:content]
	@title = params[:title]
	@user.posts.create(title: @title, content: @content)
	@post_to_edit = Post.find_by(id: params[:this_post])
	puts "This is accessing your home view"
	p params
	params[:controller] = 'home'
	erb :home
end

get '/friends-posts' do
	@user = current_user
	@content = params[:content]
	@title = params[:title]
	# @user.posts.create(title: @title, content: @content)
	params[:controller] = 'friends'
	erb :home
end

get '/myposts' do
	@user = current_user
	@content = params[:content]
	@title = params[:title]
	# @user.posts.create(title: @title, content: @content)
	params[:controller] = 'myposts'
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
	redirect '/'
end

get '/profile' do
	@user = current_user
	params[:controller] = 'profile'
	p params
	erb :profile
end

post '/profile' do
	@user = current_user
	puts "Here are the params"
	
	@other_user = User.find_by(name: params[:this_user])
	p params
	params[:controller] = 'profile'
	erb :profile
end

post '/edit-post' do
	@user = current_user
	@post_to_edit = Post.find_by(id: params[:this_post])
	p params
	params[:controller] = 'edit'
	erb :home
end


post '/save-post' do
	@user = current_user
	@post_to_edit = Post.find_by(id: params[:post_to_edit])
	@new_title = params[:edit_title]
	@new_content = params[:edit_content]
	@post_to_edit.update(content: @new_content, title: @new_title)
	@post_to_edit.save
	params[:controller] = 'home'
	erb :home
end

post '/delete-post' do
	params[:controller] = 'myposts'
	@user = current_user
	@post_to_delete = Post.find_by(id: params[:this_post])
	@post_to_delete.destroy
	erb :home
end

post '/edit-profile' do
	@user = current_user
	@user.update(name: params[:new_name], email: params[:new_email], image: params[:new_photo], bio: params[:new_bio])
	@user.save
	redirect '/profile'
end

get '/logout' do
	session[:user_id] = nil #logged out
	redirect '/'
end

post '/search_for_user' do
	puts "here are the params: #{params.inspect}"
	@users = User.where('name LIKE ?', "%#{params[:search_term]}%")
	erb :search_results, layout: false
end

