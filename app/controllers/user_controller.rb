get '/users' do
	@all_users = User.all
	p @all_users
	erb :'/users/index'
end


get '/users/login' do

  erb :'users/_login'
end

get '/users/new' do

  erb :'users/_signup'
end

get '/users/logout' do
	auth_logout

	erb :index
end

post '/users' do 
	p params
	if form_validation?
		@errors = "The information you have provided is not correct.  Please resubmit."

		erb :'/users/_signup'
	else
		@user= User.create(username: params[:username], email: params[:email], password: params[:password])
		auth_login(@user)

		redirect '/'
	end
end 



