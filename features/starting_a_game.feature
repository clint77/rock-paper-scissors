Feature: Playing a game
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
    And I press "submit"
    Then I should see "Hello Clint! Welcome to Rock, Paper and Scissors! click here to make a choice"

  Scenario: Player chooses rock
    Given I am on the playerchoice page
    When I click on "rock"
    Then I should be on the winner page

  Scenario: Computer chooses scissors and player wins
    Given I am on the winner page
    Then I should see "You chose, rock! Computer chooses scissors! You win!"
    And I should see "click to play a new game"
 