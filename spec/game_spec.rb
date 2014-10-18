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

 	it "Should recognise when a game is a draw" do
 		expect(game.winner(:rock, :rock)).to eq "Draw"
 	end

 	it "Should recognise when a game is a draw" do
 		expect(game.winner(:scissors, :scissors)).to eq "Draw"
 	end

 	it "Should recognise when a game is a draw" do
 		expect(game.winner(:paper, :paper)).to eq "Draw"
 	end

 	it "should be able to recognise the winner of paper and rock" do
 		allow(player).to receive(:weapon).and_return :paper
		allow(computer).to receive(:weapon).and_return :rock
		expect(game.winner(:paper, :rock)).to eq "Player wins"
	end


	
end