RSpec.describe ArticleList, type: :poro do
  describe "Class Methods" do
    describe ".update" do
       xit 'can be updated with curent_user project search tags' do

        user_1 = User.create!(name: "Dan Briechle")
        project_1 = Project.create!(title: "Look at how much this cost",
                                    description: "Rural america from the outsider's perspective",
                                    media: "mixed",
                                    due_date: "Feb 6th",
                                    search_tag: "rural america",
                                    user: user_1)

        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user_1)

        list = ArticleList.update

        keys = [:source, :author, :title, :description, :url, :urlToImage, :publishedAt, :content]
        expect(list[0].keys).to eq(keys)
        expect(list.count).to eq(5)
      end
    end
  end
end
