# Show the form into which they enter their login credentials.
enable :sessions

get '/login' do
  erb :"login/login_form"
end

# Process the form that they submitted.
post '/login' do
  @username = params["loginID"]
  @password = params["passwordInput"]

  check = checkLogin(@username, @password)
  # Process the login info
  	if check = true
  	# If successful, set the session var
  	   session[:id] = @username
  # and redirect back to the homepage.
  	   redirect '/admin'
     else
	     redirect '/login'
	end
end

get '/access_denied' do
  erb :"login/access_denied"
end

get '/log_out' do
  session.clear
    erb :"login/log_out"

  # Log the user out. (But how?!)
end


