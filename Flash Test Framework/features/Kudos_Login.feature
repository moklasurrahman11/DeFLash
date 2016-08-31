
Feature: Kudos Login
    @Author:Moklasur
    @Date:08/23/2016
    @User_Story:121
    @smoke_test @regression

  Scenario: User should be able to login to their Kudos account with valid credentials
      Given User navigate to Kudos login page
      Then  User type username and password on the appropriate fields
      And   User clicks on the login button
      Then User click on the log out button




Scenario: Login with invalid credentials
    Given User navigate to Kudos login page
    Then  User type invalid username and password on the appropriate fields
    And   User clicks on the login button
    Then An error message should be displayed if the login credentials are invalid