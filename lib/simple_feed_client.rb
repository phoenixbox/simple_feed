class SimpleFeedClient
  def initialize(username, password)
    @username, @password = username, password
  end
  
  def get_feed(feed_name)
    json = RestClient.get url_for(feed_name)
    JSON.parse json
  end
  
  def url_for(feed_name)
    "http://#{@username}:#{@password}@localhost:3001/api/feeds/#{feed_name}/items.json"
  end
end
