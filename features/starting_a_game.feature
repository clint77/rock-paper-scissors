Feature: Starting a game
  In order to play rps
  As a bored player
  I need to start a new game

  Scenario: Asking for a players name
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "Hey! Hey! Hey! What's your name?"

  Scenario: Player type in a name
    Given I am on the newgame page
    When I fill in "name" with "Clint"
    And press "submit"
    Then I should see "Hello Clint! Please choose rock, paper or scissors"
