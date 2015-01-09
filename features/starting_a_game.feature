Feature: Starting a game
  In order to play rps
  As a bored player
  I need to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "Hey! Hey! Hey! What's your name?"
    