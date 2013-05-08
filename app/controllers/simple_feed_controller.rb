class SimpleFeedController < ApplicationController    
  def index
    client = SimpleFeedClient.new('shane', 'cheese')
    @feed_items = client.get_feed 'shane'    
  end
end