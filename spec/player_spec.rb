require 'player'

describe Player do

	let(:player) { Player.new("Alex") }

	it "Should have a name" do
		expect(player.name).to eq "Alex"
	end

	it "Should be able to select a weapon" do
		player.select_weapon = "Rock"
		expect(player.select_weapon).to eq("Rock")
	end

end