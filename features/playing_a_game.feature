Feature: Playing
  In order to play rock, paper, scisors
  I will need to choose a weapon

  Scenario: Loading the site
    Given that I am on the result page
    And I should be able to see the winner of the game
    Then I should be able to see "Play again"