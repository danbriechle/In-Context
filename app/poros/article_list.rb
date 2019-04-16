class ArticleList
  attr_reader :list
  def initialize
    @list = []
  end


  def add_article(article)
    @list << article
  end

  def update
    get_stories.each do |article|
      add_article(article)
    end
  end

  def get_stories
    current_user_search_tags.map do |tag|
      NewsApiService.stories(tag)
    end
  end

  private

  def current_user_search_tags
    @current_user ||= User.last.projects.map do |project|
      project[:search_tag]
    end
  end

end
