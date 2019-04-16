class ArticleList

  def self.update
    current_user_search_tags.map do |tag|
      NewsApiService.stories(tag)
    end.first
  end

  def self.current_user_search_tags
    @current_user ||= User.last.projects.map do |project|
      project[:search_tag]
    end
  end

end
