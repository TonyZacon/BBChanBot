#requiresments
require 'telegram/bot'
require 'net/http/persistent'
token = "token"
#client Function
Telegram::Bot::Client.run(token) do |bot|
    def create
 client = Telegram::Bot::Client.new(update)
 client.handle(params)
end
#bot text responses   
     bot.listen do |message|
         case message.text
    when '/commands'
     bot.api.send_message(chat_id: message.chat.id, text: "List of available commands.
       "
     when 'BBChanBot'
      bot.api.send_message(chat_id: message.chat.id, text:"respond to a call")
     when 'text'
      bot.api.send_message(chat_id: message.chat.id, text:"text respnse")
      
       
    when '/rules'
     bot.api.send_message(chat_id: message.chat.id, text: 
"
list of rules
") 


   
    end
  end
end   

  
