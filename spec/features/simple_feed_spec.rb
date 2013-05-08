require 'spec_helper'

describe 'consuming the simple feed service' do
  it 'fetches and displays the data for josh' do
    VCR.use_cassette 'simple_feed' do
      visit '/simple_feed'
      page.status_code.should == 200
      page.body.should include "Me riding a shark!"
      page.body.should include "OMG, Software Craftsharks!"
    end
  end
end