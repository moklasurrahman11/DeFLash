# https://saucelabs.com/platforms/#windows_old
# osx109 = Mac / OS X Mavericks
# osx108 = Mac / OS X   Mountain Lion
Feature: Google website

  Scenario Outline: Sauce labs example with various browsers
    Given As user I navigate to Kudos Login page "<browser>"
    Then  User type username and password on the appropriate fields
    And   User clicks on the login button
    #Then User should be able to click on the recent activity tab
    #Then User takes screenshot of kudos recent activity page
    Then User should be able to search for people by name
    And User should be able to give Kudos
    When  User click on the friends tab
    When User Click on the Leaders board Tab
    Then User should be able to see top ten users
    When  User click on the Profile tab
    When  User click on the setting tab
    Then User Click on the manage account icon on the right top corner
    And Click on the Administration link
    Then User click on new users button and fill up all the info to create a new user
    Then User click on the edit button
    Then User click on the edit button
    Then Users should be able to delete a specific users

    Examples:
      |browser|
      |chrome40\|osx109|
     # |firefox36\|windows81|
#      |ie9\|windows7|
#      |chrome40\|windowsxp|
 #     |chrome41\|osx109|
#      |chrome42\|osx109|
#      |chrome40\|osx108|
#      |chrome41\|osx108|
#      |chrome42\|osx108|
#      |chrome40\|windows7|
#      |chrome41\|windows7|
#      |chrome42\|windows7|
#      |chrome41\|windowsxp|
#      |chrome42\|windowsxp|
#      |ie8\|windows7|
#       |ie8\|windows7|
#      |ie10\|windows7|
#      |ie11\|windows7|
#      |firefox25\|windows7|
#      |firefox26\|windows7|
#      |firefox27\|windows7|
#      |firefox28\|windows7|
#      |firefox29\|windows7|
#      |firefox30\|windows7|
#      |firefox31\|windows7|
#      |firefox32\|windows7|
#      |firefox33\|windows7|
#      |firefox34\|windows7|
#      |firefox35\|windows7|
#      |firefox36\|windows7|
#      |firefox37\|windows7|
#      |firefox25\|windowsxp|
#      |firefox26\|windowsxp|
#      |firefox27\|windowsxp|
#      |firefox28\|windowsxp|
#      |firefox29\|windowsxp|
#      |firefox30\|windowsxp|
#      |firefox31\|windowsxp|
#      |firefox32\|windowsxp|
#      |firefox33\|windowsxp|
#      |firefox34\|windowsxp|
#      |firefox35\|windowsxp|
#      |firefox36\|windowsxp|
#      |firefox37\|windowsxp|
#      |firefox37\|windows81|
#      |safari8\|iphone5|


