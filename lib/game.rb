class Game

	def initialize(player, computer)
		@players = []
		@player = player
	end

	attr_accessor :players, :player

	GESTURES = { paper: :rock , scissors: :paper}


	def winner(player_gesture, computer_gesture)
		return "Draw" if player_gesture == computer_gesture
		return "Player wins" if GESTURES[player_gesture] == computer_gesture
		return "Computer wins"
	end

end
