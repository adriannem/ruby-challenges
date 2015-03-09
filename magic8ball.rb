require 'rubygems'
require 'twilio-ruby'

account_sid = "AC212d32a4dd66e2c9a2e6c3fb63e44934"
auth_token = "82bbf988533b038ab3394350f8bce91c"

@client = Twilio::REST::Client.new(account_sid, auth_token)

puts "Ask a yes/no question."

question = gets.chomp

answer = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", "As I see it, yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"]

message = @client.account.messages.create(
  :from => "18326483732", 
  :to =>"12818465842", 
    :body => "This is a text message from yourself."
)
 
puts message.to
