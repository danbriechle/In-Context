require 'rails_helper'

describe 'News API ' do
  xit 'can connect' do
    search_term = "Fast Fashion"
    response = NewsApiService.stories(search_term)
    keys = [:source, :author, :title, :description, :url, :urlToImage, :publishedAt, :content]
    expect(response[0].keys).to eq(keys)
    expect(response.count).to eq(5)
  end
end
