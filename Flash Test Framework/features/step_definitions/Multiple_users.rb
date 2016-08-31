Then(/^User types (.*) and (.*) on the appropriate fields$/) do |username, password|
  on(KudosLoginPage).user_name0.when_present.set username
  on(KudosLoginPage).pass_word0.when_present.set password

end

And(/^User clicks on the login button and login in to their account$/) do
  on(KudosLoginPage).click_on_login_button


end

Then(/^Then user verify his name on the dashbord$/) do
  on(KudosHomePage).who_am_i
end

And(/^User checks for his available points displayed on the dashbord$/) do
  on(KudosHomePage).my_availalbe_points

end

Then(/^User checks for his\/her Kudos Level and My Points$/) do
  on(KudosHomePage).my_number_of_kudos
  #on(KudosHomePage).
end

Then(/^User checks whether he\/she has admin access or not$/) do
  on(KudosHomePage).click_account_icon
  on(KudosHomePage).click_on_admin_link
end