require 'player'

describe Player do

	let(:player) { Player.new("Alex") }

	it "Should have a name" do
		expect(player.name).to eq "Alex"
	end

	it "Should be able to select a gesture" do
		player.select_gesture = "Rock"
		expect(player.select_gesture).to eq("Rock")
	end

end