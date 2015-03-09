require 'rubygems'
require 'twilio-ruby'

account_sid = "AC212d32a4dd66e2c9a2e6c3fb63e44934"
auth_token = "82bbf988533b038ab3394350f8bce91c"

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
  :from => "18326483732", 
  :to =>"12818465842", 
    :body => "This is a text message from yourself."
)
 
puts message.to
