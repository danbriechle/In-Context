require 'rails_helper'

describe 'as a user' do
  context 'when i visit my dahsboard' do
    it 'sees nav bar' do
      user_1 = User.create!(name: "Dan Briechle")
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user_1)

      visit "/"
      
      expect(page).to have_link("Projects")
      expect(page).to have_button("Search")
    end
  end
end
