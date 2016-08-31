Feature: Give Kudos


  @User_Story:FLAS40

  Scenario: User should be able to Search People by name to give kudos
    Given User navigate to Kudos login page
    Then  User type username and password on the appropriate fields
    And   User clicks on the login button
   # When  User click on the recent activity tab
    Then User should be able to search for people by name
    And User should be able to give Kudos


