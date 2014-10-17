require 'game'

describe Game do

let(:game) { Game.new(player, computer) }
let(:player) {double :player, name: 'player'}
let(:computer) {double :computer, name: 'computer'}

	it "should be able to hold players" do
		expect(game.players).to eq([])
 	end

 	it "should initialize with a player" do
 		expect(game.player).to eq player
 	end

 	
	
end