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
    
	def send(text)
    begin
  		@client.write text
    rescue Timeout::Error, Errno::ETIMEDOUT
      puts "*** Failed to send to Cleverbot server ***"
      puts "*** Reconnecting bot ***"
  		@client = Cleverbot::Client.new
    end
	end

end

