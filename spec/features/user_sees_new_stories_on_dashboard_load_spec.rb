require 'rails_helper'

describe 'as a user' do
  context 'when i visit my dahsboard' do
    xit 'sees 10 prepopulated articles based upon my search tags' do
      user_1 = User.create!(name: "Dan Briechle")
      project_1 = Project.create!(title: "Look at how much this cost",
                                  description: "Rural america from the outsider's perspective",
                                  media: "mixed",
                                  due_date: "Feb 6th",
                                  search_tag: "rural america",
                                  user: user_1)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user_1)

      visit "/"

      id = ArticleList.first.id
      within ".Article-#{id}" do
      expect(page).to have_content("Title")
      end
    end
  end
end
