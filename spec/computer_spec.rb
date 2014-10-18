require 'computer'

describe Computer do

	let(:computer) { Computer.new }


	it "should have a list of avaiblable gestures" do
		expect(computer.gestures.count).to eq(3)
	end

	it "should be able to pick a random gesture" do
		expect(computer.select_gesture).to be_a Symbol
	end

end