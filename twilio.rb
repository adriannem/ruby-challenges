require 'rubygems'
require 'twilio-ruby'

account_sid = "xxxxxxxx"
auth_token = "xxxxxxxxx"

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
  :from => "xxxxxxx", 
  :to =>"xxxxxxxx", 
    :body => "This is a text message from yourself."
)
 
puts message.to
