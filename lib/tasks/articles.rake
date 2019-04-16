  desc "get articles"
  task get_article_list: :environment do
    Rails.cache.write('article-key', ArticleList.update)
  end
