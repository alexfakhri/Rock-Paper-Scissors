Feature: Registering
  In order to play rock, paper, scisors
  I will need to start a new game

  Scenario: Loading the site
    Given I am on the homepage
    When I see "Welcome to Rock, Paper, Scissors"
    Then I follow "Start A New Game"

  Scenario: Registering
  	Given I am on the new game page
  	When I should see "Enter your name:"
  	And I should be able to enter my name
  	Then I should be able to click "Let's Play"