class ArticleList
  attr_reader :list
  def initialize
    @list = []
  end

  def add_article(article)
    @list << article 
  end
end
