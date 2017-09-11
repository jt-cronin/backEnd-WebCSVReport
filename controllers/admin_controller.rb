


get '/admin' do
	if permitAccess == false
		redirect '/access_denied'
	end
	erb :"admin/admin_page"
end
# Process the form that adds a new row to the CSV file.
post '/add_row' do
  params.to_s
  addToFile(convertInput)

  redirect '/add_row'
end

get '/add_row' do
	if permitAccess == false
		redirect '/access_denied'
	end
	erb :"admin/add_row"
end
