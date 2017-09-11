# Show the appropriate report.



get '/report' do
	if permitAccess == false
		redirect '/access_denied'
	end
  erb :"accounts/report"
end

