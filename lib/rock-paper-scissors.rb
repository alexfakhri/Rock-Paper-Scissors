require 'sinatra/base'
require_relative 'player'
require_relative 'computer'
require_relative 'game'

class RockPaperScissors < Sinatra::Base

	set :views, Proc.new { File.join(root, "..", "views") }
	set :public_folder, settings.root + '/../public/'

  enable :sessions

  player = Player.new(@name)
  computer = Computer.new
  game = Game.new(player, computer)

  get '/' do
    erb :index
  end

  get '/new_game' do
  	erb :new_game
  end

  post '/start_game' do
	 	@name = params[:name]
    session[:name] = @name
	 	erb :start_game
	end

  get '/start_game' do
  	@name = session[:name]
  	erb :start_game
  end

  post '/game_result' do
    @name = session[:name]
    @player_gesture = params[:player_gesture].to_sym
    @computer_gesture = computer.select_gesture
    @result = game.winner(@player_gesture, @computer_gesture)
    erb :game_result
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
