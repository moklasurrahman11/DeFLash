Feature: Show Kudos Leaders Board


  @Author:Moklasur @Date:08/23/2016
  @User_Story:FLAS-8
  @smoke_test @regression

  Scenario: User should be able to login to their Kudos account with valid credentials
    Given User navigate to Kudos login page
    Then  User type username and password on the appropriate fields
    And   User clicks on the login button
    When User Click on the Leaders board Tab
    Then User should be able to see top ten users






