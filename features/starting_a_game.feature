Feature: Starting the game
  In order to play rock, paper, scisors
  I will need to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I see "Welcome to Rock, Paper, Scissors"
    Then I follow "Start New Game"