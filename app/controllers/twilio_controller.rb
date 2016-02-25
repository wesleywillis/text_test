class TwilioController < ApplicationController

  def index

  end

  def sent_text
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']
    twilio_phone_number = '+17734821550'

    #message_body = params["Body"]
    #from_number = params["From"]

    #@client = Twilio::REST::Client.new(account_sid, auth_token)
    #@client.account.sms.messages.create(
    #  from: "+1#{twilio_phone_number}",
    #  to: "+1#{from_number}",
    #  body: "Hey there! I got a text from you"
    #)
    twiml = Twilio::TwiML::Response.new do |r|
    r.Message "Hey there! I got a text from you."
    end
    twiml.text
  end
end
