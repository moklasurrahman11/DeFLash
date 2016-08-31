class AdminPage<GenericBasePage

  element(:new_user) {|b| b.button(text:"New User")}                                  #New User
  #----------New Users Info---------------------------------------------------------------------------
  #element(:first_name) {|b| b.input(id:'inputFirstName')}                        #First Name
  element(:middle_name) {|b| b.text_field(text:"inputMiddleName")}                    #Middle Name
  element(:first_name) {|b| b.text_field(text:"inputLastName")}                       #Last name
  element(:user_name) {|b| b.text_field(text:"inputUsername")}                        #User Name
  element(:password) {|b| b.text_field(text:"inputPassword")}                         #Password
  element(:save_button) {|b| b.button(text:"Save")}                                  #Save Button
#----------Edit----------------------------------------------------------------------------------------

  element(:edit_button) {|b| b.links(text:"edit")}                                  #Save Button

  #---------Delete Button--------------------------------------------------------------------------
  element(:delete_button) {|b| b.button(text:"Delete User")}                                  #Delete Button
  element(:delete_popup_button) {|b| b.button(text:"Delete")}                                  #Delete Button




def click_on_delete_button
  sleep 3
  delete_button.when_present.click
  sleep 3
  delete_popup_button.when_present.click
end


  def click_on_new_user_button
    new_user.when_present.click
  end


def fill_up_new_user_info
  p "  OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO    "
sleep 2
  @browser.input(id:"inputFirstName").when_present.send_keys ['j', 'a','n','n']

  @browser.input(id:"inputMiddleName").when_present.send_keys [ 'j', 'a','n','n']

  @browser.input( id:"inputLastName").when_present.send_keys [ 'j', 'a','n','n']

  @browser.input(id:"inputUsername").when_present.send_keys ['j', 'a','n','n']

  @browser.input(id:"inputPassword").when_present.send_keys [ 'j', 'a','n','n']

  @browser.button(text:"Save").when_present.click

sleep 2
  p "  OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO    "
  # middle_name.when_present.set("Jr")
  # first_name.when_present.set("Adam")
  # user_name.when_present.set("jhon")
  # password.when_present.set("password")
  # save_button.when_present.click

end

  def click_on_edit
sleep 5
    p ' XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      a = edit_button.last
      a.click
    p ' XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX '
     @browser.button(text:"Save").when_present.click
  end





end