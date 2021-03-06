require 'rails_helper'

describe 'as a user' do
  context 'when i visit my dahsboard' do
    xit 'sees nav bar' do
      user_1 = User.create!(name: "Dan Briechle")
      project_1 = Project.create!(title: "Look at how much this cost",
                                  description: "Rural america from the outsider's perspective",
                                  media: "mixed",
                                  due_date: "Feb 6th",
                                  search_tag: "rural america",
                                  user: user_1)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user_1)

      visit "/"

      expect(page).to have_link("My Projects")
      expect(page).to have_button("Search")
    end
  end
end
