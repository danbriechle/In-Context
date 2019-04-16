require 'rails_helper'

describe 'News API ' do
  it 'can connect' do
    search_term = "Fast Fashion"
    response = NewsApiService.stories(search_term)
    keys = [:source, :author, :title, :description, :url, :urlToImage, :publishedAt, :content]
    expect(response[:articles][0].keys).to eq(keys)
  end
end
