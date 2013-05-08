require 'spec_helper'

describe 'consuming the simple feed service' do
  it 'fetches and displays the data for shane' do
    VCR.use_cassette 'simple_feed' do
      visit '/simple_feed'
      page.status_code.should == 200
      page.body.should include "Banana Conference"
      page.body.should include "Banana!"
    end
  end
end