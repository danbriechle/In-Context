class Project < ApplicationRecord
  validates_presence_of :title,
                        :description,
                        :media,
                        :due_date,
                        :search_tag
  belongs_to :user
  has_many :articles
end
