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

	it "should be able to recognise the winner of rock and paper" do
 		allow(player).to receive(:weapon).and_return :rock
		allow(computer).to receive(:weapon).and_return :paper
		expect(game.winner(:rock, :paper)).to eq "Computer wins"
	end

 	it "should be able to recognise the winner of paper and scissors" do
 		allow(player).to receive(:weapon).and_return :paper
		allow(computer).to receive(:weapon).and_return :scissors
		expect(game.winner(:paper, :scissors)).to eq "Computer wins"
	end


 	it "should be able to recognise the winner of scissors and paper" do
 		allow(player).to receive(:weapon).and_return :scissors
		allow(computer).to receive(:weapon).and_return :paper
		expect(game.winner(:scissors, :paper)).to eq "Player wins"
	end


	
end