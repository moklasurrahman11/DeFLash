Given(/^As user I navigate to Kudos Login page "([^"]*)"$/) do |browser|
  ENV['WHERE']="remote"
  ENV['BROWSER']= browser
  ENV['BROWSER'] = "chrome" if ENV['BROWSER'].nil?
  ENV['WHERE'] = "local" if ENV['WHERE'].nil?
  if(ENV['WHERE']=="remote")
    @browser = SauceLabs.watir_browser(ENV['BROWSER'].to_sym,{url:"http://sameer3464:3652cbce-ea2a-4a54-8cc6-cc41d6b00c1f@ondemand.saucelabs.com:80/wd/hub"})
  else
    @browser = SauceLabs.watir_browser(ENV['BROWSER'].to_sym)
  end
  @browser.window.maximize
  @browser.goto "http://107.22.75.223:8080/flash-client/?p=home"
end

Then(/^User takes screenshot of kudos recent activity page$/) do
  screenshot_name = ENV['BROWSER'].gsub('|','')
  @browser.screenshot.save "#{screenshot_name}.png"
  embed "#{screenshot_name}.png", "image/png"

end

Then(/^User should be able to click on the recent activity tab$/) do
  on(KudosHomePage).click_on_recent_activity
end

