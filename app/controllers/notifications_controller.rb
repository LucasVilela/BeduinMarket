class NotificationsController < ApplicationController


  def test_message

    twilio_sid = Rails.application.secrets.twilio_sid
    twilio_token = Rails.application.secrets.twilio_token
    twilio_phone_number = Rails.application.secrets.twilio_phone_number

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => twilio_phone_number,
      :to => +{twilio_phone_number},
      :body => "If you receive this you are awsome !!"
    )
  end

end
