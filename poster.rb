# If you post to a Ruby on Rails REST API endpoint, then you'll get an
# InvalidAuthenticityToken exception unless you set a different
# content type in the request headers, since any post from a form must
# contain an authenticity token.
#
# This example shows you how to post to a rails endpoint.

class Poster
  require 'json'
  require 'uri'
  require 'net/http'

  ENDPOINT = 'http://hollow-flower-9984.herokuapp.com/messages'
  def post_to_endpoint(text)
    uri = URI.parse(ENDPOINT)
  
    post_params = { :content => text }
  
    # Convert the parameters into JSON and set the content type as application/json
    req = Net::HTTP::Post.new(uri.path)
    req.body = JSON.generate(post_params)
    req["Content-Type"] = "application/json"
    
    http = Net::HTTP.new(uri.host, uri.port)
    response = http.start {|htt| htt.request(req)}
  end
end

