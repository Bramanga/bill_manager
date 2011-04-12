Feature: Dashboard
  In order to keep track of billing
  As a roommate
  I want to be able to post bills and their payment statuses

  Scenario: Dashboard View
    Given I am on the home page
    Then I am on the home page

  Scenario: User login (roommate)
    Given I am on the home page
    And I follow "Login"
    Then I should be on the login page

