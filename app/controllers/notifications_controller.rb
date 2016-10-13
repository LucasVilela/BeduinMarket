class NotificationsController < ApplicationController


  def test_message


    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => twilio_phone_number,
      :to => +{twilio_phone_number},
      :body => "If you receive this you are awsome !!"
    )
  end

end
