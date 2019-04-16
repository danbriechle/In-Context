  desc "get articles"
  task get_article_list: :environment do
    articles = ArticleList.update
    Rails.cache.write('article-key', articles )
  end
