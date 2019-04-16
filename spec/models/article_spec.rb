require 'rails_helper'

describe Article do
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:authors) }
    it { should validate_presence_of(:source) }
    it { should validate_presence_of(:image_url) }
    it { should validate_presence_of(:content) }
    it { should validate_presence_of(:publication_date) }
    it { should validate_presence_of(:description) }
  end
  describe 'relationships' do
    it { should belong_to(:project) }
  end
end
