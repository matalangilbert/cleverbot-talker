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
		@client.write text
	end

end

