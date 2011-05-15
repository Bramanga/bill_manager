Feature: Login
  In order to log into the application
  As a roommate
  I want to be able to create and sign in with a user

  Scenario: Sign Up
    Given I am on the home page
    And I follow "Sign up"
    Then I should be on the sign_up page
    And I fill in "Email" with "test@bramanga.com"
    And I fill in "Password" with "google"
    And I fill in "Password confirmation" with "google"
    And I press "Create User"
    Then I should be on the bills page

  Scenario: Successful user login
    Given a user exists with email: "test@bramanga.com" and password: "google"
    Given I am on the login page
    And I fill in "Email" with "test@bramanga.com"
    And I fill in "Password" with "google"
    And I press "Log in"
    Then I should be on the bills page

  Scenario: Failed user login
    Given a user exists with email: "test@bramanga.com" and password: "google"
    And I am on the login page
    And I fill in "Email" with "test@bramanga.com"
    And I fill in "Password" with "yahoo"
    And I press "Log in"
    Then I should be on the sessions page
    And I should see "Invalid email or password"

