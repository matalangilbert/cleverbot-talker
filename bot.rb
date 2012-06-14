require_relative 'speech'
require 'cleverbot'

class Bot
	
	def initialize(params)
		@client = Cleverbot::Client.new
    @pitch = params[:pitch]
    @name = params[:name]
	end
	
  def name
    @name
  end
  
  def pitch
    @pitch
  end
  
  def speak(text)
    speaker ||= Speech.new  
    speaker.speak("<pitch middle = '#{@pitch}'> #{text}")
  end
    
	def send(text)
		@client.write text
	end

end

