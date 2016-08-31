class KudosHomePage<GenericBasePage


  element(:profile_img_icon) {|b| b.image(xpath:'//*[@id="bs-example-navbar-collapse-1"]/ul/li[2]/a/img')}          #Profile img
  element(:administration_link) {|b| b.link(text:'Administration')}                                            #Administrator link
  def click_account_icon
    profile_img_icon.when_present.click
  end

  def click_on_admin_link
    if (administration_link.exist?)
      puts "--------Congrates You have Admin Rights-----------"
    administration_link.when_present.click
    else
      puts "----Sorry User Don't Have admin Access"
      end
  end

#-------Log Out-------------------------------------------------------------------------------
  element(:sign_out_link) {|b| b.link(text:'Sign Out')}                                                        #Sign out link
def log_out
  sign_out_link.when_present.click
end
  #------------------------------------------------------------------------------------------
  element(:action) {|b| b.link(text:'Action')}                                                                 #Action link
  element(:another_action) {|b| b.link(text:'Another action')}                                                 #Another Action link
  element(:kudo_bell) {|b| b.link(xpath:'//*[@id="bs-example-navbar-collapse-1"]/ul/li[1]/a/img')}             #kudo bell link
  element(:current_user) {|b| b.span(xpath:'//*[@id="userAccount"]/div/div/div[2]/h4/span')}                   #Current Users name
  #element(:current_user) {|b| b.span(xpath:'//*[@id="userAccount"]/div/div/div[2]/h4/span')}                   #Current Users name
  element(:available_points) {|b| b.h1(xpath:'//*[@id="userAccount"]/div/div/div[4]/ul/li[1]/h1')}                     #Available Points


  element(:username) {|b| b.h1(text:'//*[@id="userAccount"]/div/div/div[4]/ul/li[2]/h1')}                      #My Points
  element(:number_of_kudo) {|b| b.div(class:'number')}                                                         #number of kudos
  element(:recent_activity_tab) {|b| b.link(text:'Recent Activity')}                                           #recent activity tab
  element(:leader_boards_tab) {|b| b.link(text:'Leaderboards')}                                                #Leader boards tab
  element(:profile_tab) {|b| b.link(xpath:'//*[@id="app-content"]/div[2]/div/div/div/ul/li[3]/a')}                                                           #profile tab
  element(:friends_tab) {|b| b.link(xpath:'//*[@id="app-content"]/div[2]/div/div/div/ul/li[4]/a')}                                                           #Friends Tab
  element(:settings_tab ) {|b| b.link(xpath:'//*[@id="app-content"]/div[2]/div/div/div/ul/li[5]/a')}                                                       #settings_tab
  # element(:username) {|b| b.link(text:'Sign Out')}                                                        #Sign out link
  # element(:username) {|b| b.link(text:'Sign Out')}                                                        #Sign out link



def who_am_i

  sleep 4
  puts "Current User is: #{current_user.text}"
end


def click_on_recent_activity
  recent_activity_tab.when_present.click
end

def my_number_of_kudos
 puts "My Current Number of Kudos: #{number_of_kudo.text}"

end

  def my_availalbe_points
    puts "Current Available points: #{available_points.text}"
  end


def click_on_leadersboard
  leader_boards_tab.when_present.click
end


def click_on_profile_tab
  profile_tab.when_present.click
end

  def click_on_friends_tab
    sleep 3
    friends_tab.when_present.click
  end


  def click_on_setting_tab
    settings_tab.when_present.click
  end

end