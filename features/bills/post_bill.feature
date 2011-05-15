Feature: Post a new bill
  In order to post a bill for viewing
  As a roommate
  I want to create a new bill post

  Background:
    Given a user exists with email: "test@bramanga.com" and password: "google"
    Given I am logged in as "test@bramanga.com" with password: "google"
    Given a bill exists

  Scenario: Successfully post a new bill
    Given I am on the bills page
    And I follow "Post Bill"
    Then I should be on the new bill page
    And I fill in "Name" with "DTE"
    And I fill in "Amount" with "60"
    And I fill in "Posted by" with "Test"
    And I press "Create Bill"
    Then I should be on the bills page
    And I should see "DTE"
    And I should see "60"
    And I should see "Test"

  Scenario: Fail to post a new bill
    Given I am on the bills page
    And I follow "Post Bill"
    Then I should be on the new bill page
    And I fill in "Name" with "Consumers Energy"
    And I fill in "Amount" with "Gumbo"
    And I press "Create Bill"
    Then I should see "New bill"
    And I should see "Amount is not a number"

  Scenario: Edit a newly posted bill
    Given I am on the bills page
    And show me the page
    And I follow "Edit"
    And I fill in "Name" with "Consumers"
    And I fill in "Amount" with "10"
    And I press "Update Bill"
    Then I should be on the bills page
    And I should see "Consumers"
    And I should see "10"
    And I should see "Tester"

