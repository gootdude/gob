Feature: User views all operating vendors

  In order to quickly find a place to eat
  As a user
  I want to view all operating vendors on a single page

  Scenario: No trucks operating
    Given there are no operating vendors
    When I view all operating vendors
    Then I should see that there are no vendors that are operating