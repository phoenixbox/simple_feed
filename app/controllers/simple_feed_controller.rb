class SimpleFeedController < ApplicationController    
  def index
    client = SimpleFeedClient.new('josh', 'cheese')
    @feed_items = client.get_feed 'josh'    
  end
end