Given(/^User navigate to Kudos login page$/) do
  visit KudosLoginPage
  ##@browser.goto "http://hugo@domain.com:password@107.22.75.223:8080"

end

Then(/^User type username and password on the appropriate fields$/) do
  on(KudosLoginPage).first_login
  #on(KudosLoginPage).login_with_credentials

end

And(/^User clicks on the login button$/) do
  #on(KudosLoginPage).click_on_login_button
  on(KudosLoginPage).click_login_submit_button
  sleep 3





  # browser.alert.set "Text for prompt"
  # browser.alert.ok
  # on(KudosLoginPage).browser_authentication
  # all_windows = @browser.driver.window_handles
  # @browser.driver.switch_to.window(all_windows.last)
  #
  # on(KudosLoginPage).authentication


end


Then(/^User click on the log out button$/) do
  on(KudosHomePage).click_account_icon
  on(KudosHomePage).log_out
end

Then(/^An error message should be displayed if the login credentials are invalid$/) do
  on(KudosLoginPage).error_message
end

Then(/^User type invalid username and password on the appropriate fields$/) do
  on(KudosLoginPage).user_name0.when_present.set('false@domail.com')
  on(KudosLoginPage).pass_word0.when_present.set('Password')
end