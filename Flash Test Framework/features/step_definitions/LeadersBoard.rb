When(/^User Click on the Leaders board Tab$/) do
  on(KudosHomePage).click_on_leadersboard
end

Then(/^User should be able to see top ten users$/) do
on(LeadersBoardPage).screen_shot
#on(LeadersBoardPage).who_is_the_leader
sleep 2
 user = @browser.divs(class:"col-xs-8 col-lg-8")
  user.each do |user_name|
    puts "Top user name: #{user_name.text}"
  end
  if user.length == 10
    p " Top 10 user displayed as ecpected  "
  else
    p " Top 10 user NOT displayed as ecpected  "
  end

end