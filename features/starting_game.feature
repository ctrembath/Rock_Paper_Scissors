Feature: Starting the game
  In order to play rock,paper,scissors
  As a hot babe
  I want to start a new game

Scenario: Joining the game
  Given I am on the homepage
  When I fill out my name
  And Press the "play" button
  Then I should be taken to the game page

Scenario: Playing the game
  Given I have registered to play
  When I choose "scissors"
  Then I should see result

