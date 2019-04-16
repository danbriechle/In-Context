require 'rails_helper'

describe Project do
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:media) }
    it { should validate_presence_of(:due_date) }
    it { should validate_presence_of(:search_tag) }
  end
  describe 'relationships' do
    it { should belong_to(:user) }
    it { should have_many(:articles) }
  end
end
