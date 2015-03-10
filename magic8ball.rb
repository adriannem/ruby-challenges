require 'rubygems'
require 'twilio-ruby'

account_sid = "xxxxxxxxxx"
auth_token = "xxxxxxxxxxxxxx"

@client = Twilio::REST::Client.new(account_sid, auth_token)

puts "Ask a yes/no question."

question = gets.chomp

answer = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", "As I see it, yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"].sample(1)

answer.each do |message|

message = @client.account.messages.create(
  :from => "xxxxxxxxxxxx", 
  :to =>"xxxxxxxxxxxx", 
    :body => message
)
 
puts message.to
    
    puts answer
    
end


