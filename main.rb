require "sinatra"
require "csv"
require "pry"
require_relative "functions.rb"
enable :sessions



# Homepage
get '/' do 
	erb :index
end

require_relative "./controllers/login_controller.rb"
require_relative "./controllers/accounts_controller.rb"
require_relative "./controllers/admin_controller.rb"
require_relative "./controllers/new_user_controller.rb"