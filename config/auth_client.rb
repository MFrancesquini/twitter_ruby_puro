require "twitter"

def auth_client
  Twitter::REST::Client.new do |config|
 ###   config.consumer_key        = 
 ###   config.consumer_secret     = 
 ###   config.access_token        =  No site do twitter, cadastre seu token!!!
 ###   config.access_token_secret = 
  end
end