class RecentActivity<GenericBasePage

  element(:kudo_recever) {|b| b.text_field(id:"kudoReciever")}          #Kudo recever

  element(:post_message) {|b| b.textarea(id:"postMessage")}          #Post Message
  element(:post_button) {|b| b.button(text:"Post")}          #Post Message





  def search_people_you_want_to_recognize
    kudo_recever.when_present.set('Jack Bauer')
  end

  def type_message
    post_message.when_present.set('Great Job and You deserve a Kudo')
  end

def click_on_post_button
  post_button.when_present.click
end


end