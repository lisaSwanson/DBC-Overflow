helpers do
	
def auth_login(user)
	p "$" * 80
	p user.username
	session[:user_id] = user.id
	session[:username] = user.username
end

def auth_logout
	session.destroy	
end

def form_validation?
	p params
	return true if params[:password] != params[:password_confirm] || params.any?{|k, v| v == ""}
end

  FormData = Struct.new(:first_name, :last_name, :email, :password, :gender)
  def make_form_object(params)

    return @form_data = FormData.new(params[:first_name], params[:last_name], params[:email], params[:password], params[:gender])
  end


def current_user
	if session[:user_id]
		return User.find(session[:user_id])
	else
		return nil
	end
end

end

       # <!--      <% #if tag_map %>
       #          <% tag_map.each #do |tag|%>
       #          <a href="/tags" class="listing_tag"><%= tag.tag.name %></a>
       #          <% #end %> -->
