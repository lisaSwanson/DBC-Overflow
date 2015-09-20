post '/users/login' do
	user_form = params[:user]
	@user = User.find_by(username: user_form[:username])
	if @user == nil
		@errors = "The information you have provided is not correct.  Please resubmit. Username and password are case sensitive."

		erb :'users/_login'
	else
		auth_login(@user)

		redirect '/'
	end
end
