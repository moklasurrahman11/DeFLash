Feature:  As an Admin I should be able to Perform CRUD operation on Kudos

  @Jira_User_Story:FLAS-19

  Scenario: Create New User
  Scenario: User should be able to login to their Kudos account with valid credentials
    Given User navigate to Kudos login page
    Then  User type username and password on the appropriate fields
    And   User clicks on the login button
    Then User Click on the manage account icon on the right top corner
    And Click on the Administration link
    Then User click on new users button and fill up all the info to create a new user




  Scenario: Edit Users
    Given User navigate to Kudos login page
    Then  User type username and password on the appropriate fields
    And   User clicks on the login button
    Then User Click on the manage account icon on the right top corner
    And Click on the Administration link
    Then User click on the edit button






    Scenario: Delete Users

      Given User navigate to Kudos login page
      Then  User type username and password on the appropriate fields
      And   User clicks on the login button
      Then User Click on the manage account icon on the right top corner
      And Click on the Administration link
      Then User click on the edit button
      Then Users should be able to delete a specific users

