When(/^User click on the recent activity tab$/) do
  on(KudosHomePage).click_on_recent_activity
end

Then(/^User should be able to search for people by name$/) do
on(RecentActivity).search_people_you_want_to_recognize
end

And(/^User should be able to give Kudos$/) do
  on(RecentActivity).type_message
  on(RecentActivity).click_on_post_button

end