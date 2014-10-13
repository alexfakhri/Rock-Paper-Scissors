class Game



end


# class Game 

# 	def initialize(player1, player2)
# 		@player1 = player1
# 		@player2 = player2
# 		@players = [@player1, @player2]
# 	end

# 	BEATS = {rock: [:scissors, :lizard],
# 					 scissors: [:paper, :lizard],
# 					 paper: [:rock, :spock],
# 					 lizard: [:spock, :paper],
# 					 spock: [:scissors, :rock]}

# 	attr_reader :players, :player1, :player2

# 	def winner
# 		return "Draw" if player1.pick == player2.pick
# 		return player1 if BEATS[normalize(player1.pick)].include?(normalize(player2.pick))
# 		player2
# 	end

# 	def normalize(pick)
# 		pick.downcase.to_sym
# 	end
# end