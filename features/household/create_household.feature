Feature: Create a new home
  In order to create a new home
  As a roommate
  I want to create a new home

  Scenario: Create a home
    Given a user exists with email "test@bramanga.com" and password "google"
    And I am logged in as "test@bramanga.com" with password "google"
    And I am on the homes page
    And I follow "Add a Home"
    And I fill in "Name" with "The Rat Shack"
    And I press "Create home"
    Then I should be on the homes page
    And I should see "The Rat Shack"

  Scenario: Register with a home

  Scenario: Remove a home

  Scenario: Invite a user to home

