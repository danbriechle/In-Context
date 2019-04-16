class NewsApiService
  def self.key
    ENV['NEWS_API_KEY']
  end

  def self.stories(search_term)
    get_json(search_term)
  end

  private

  def self.get_json(search_term)
    response = conn(search_term).get
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn(search_term)
    Faraday.new(url: "https://newsapi.org/v2/everything") do |f|
      f.params[:apiKey] = key
      f.params[:q] = search_term
      f.adapter Faraday.default_adapter
    end
  end

end
