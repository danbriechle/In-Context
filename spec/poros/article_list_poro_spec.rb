RSpec.describe ArticleList, type: :poro do
  describe "Class Methods" do
    describe ".add_article" do
      it "can have articles added to it" do
        list = ArticleList.new
        article_1 = Article.create!(title: "Getting Real About Rural America",
                                    authors: "PAUL KRUGMAN",
                                    source: "The New York Times",
                                    image_url: "https://static01.nyt.com/images/2019/03/18/opinion/18krugmanWeb/18krugmanWeb-facebookJumbo.jpg",
                                    publication_date: "2019-03-18T22:00:06Z",
                                    description: "Politically, rural America is increasingly a world apart.",
                                    project: project_1,
                                    content: "Even then, rural areas and small towns werent the real America, somehow morally
                                    superior to the rest of us. But they were a major part of the demographic, social
                                    and cultural landscape.Since then, however, while Americas population has doubled,
                                    the number o… ")
        article_2 = Article.create!(title: "What Rural America Has to Teach Us",
                                    authors: "DAVID BROOKS",
                                    source: "The New York Times",
                                    image_url: "https://static01.nyt.com/images/2019/03/21/opinion/21brooks1/21brooks1-facebookJumbo.jpg",
                                    publication_date: "2019-03-21T22:33:22Z",
                                    description: "A couple at a “cowboy church” service at the Nebraska State Fair in Grand Island.",
                                    project: project_1,
                                    content: "Even then, rural areas and small towns werent the real America, somehow morally
                                    superior to the rest of us. But they were a major part of the demographic, social
                                    and cultural landscape.Since then, however, while Americas population has doubled,
                                    the number o… ")

        list.add_article(article_1)
        expect(list[0][:title]).to eq("Getting Real About Rural America")
        list.add_article(article_2)
        expect(list[1][:title]).to eq("What Rural America Has to Teach Us")
        expect(list.count).to eq(2)
      end
    end
  end
end
