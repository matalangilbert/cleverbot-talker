require_relative 'speech'
require 'cleverbot'

class Bot
	
	def initialize
		@client = Cleverbot::Client.new
	end
	

	def send(text)
		@client.write text
	end

end

bot1 = Bot.new
bot2 = Bot.new

current_bot = bot1

puts initial_greeting = 'Hello'
#speaker = Speech.new
#speaker.speak initial_greeting
puts reply = current_bot.send(initial_greeting)

1000.times do

	#speaker.speak(reply)
	if current_bot == bot1 then current_bot = bot2 else current_bot = bot1 end
	
	puts reply = current_bot.send(reply)

end