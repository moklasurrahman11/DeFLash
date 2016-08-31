class LeadersBoardPage<GenericBasePage

  element(:top_kudos_recevier) {|b| b.h4(xpath:'//*[@id="_userLeaders_57bc0de5feda432ffa211ffa"]/div/div/div/div[3]/h4')}          #Kudo recever



def who_is_the_leader
   puts "Top Kudos receiver: #{top_kudos_recevier}"
   expect(top_kudos_recevier.text).eql_to(20)
end


def screen_shot
   @browser.screenshot.save "screenshot.png"
  # embed screenshot, 'image/png'

  # screenshot = "#{scenario.name}"
  # @browser.driver.save_screenshot screenshot
  # embed("#{screenshot}_image_png.png")
end







end