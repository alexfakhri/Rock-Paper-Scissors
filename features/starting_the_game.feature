Feature: Playing the agme
  In order to play rock, paper, scisors
  I will need to select my weapon of choice

	Scenario: Playing the game
		Given I am on the start game page
		And I should be able to see: Alex, Select Your Weapon:
		When I should be able to select my weapon "Rock" "Paper" or "Scissors?"