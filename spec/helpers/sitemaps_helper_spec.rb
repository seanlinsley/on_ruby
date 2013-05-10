require 'spec_helper'

describe SitemapsHelper do
  let(:sitemap_urls) { ["http://hamburg.test.host/events/tesssstooo", "http://hamburg.test.host/locations/blau-mobilfunk-gmbh", "http://hamburg.test.host/"] }

  it "returns the right urls" do
    create(:event, name: 'tesssstooo', label: 'hamburg')
    helper.urls('hamburg').should eql(sitemap_urls)
  end
end
