require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

	set :views, Proc.new { File.join(root, "..", "views") }
	# set :public_folder, settings.root + '/../public/'

  get '/' do
    erb :index
  end

  get '/new_game' do
  	erb :new_game
  end

  post '/sign_up' do
	 	@name = params[:name]
	 	erb :start_game
	end

  get '/start_game' do
  	@name = params[:name]
  	erb :start_game
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
