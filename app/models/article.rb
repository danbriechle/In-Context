class Article < ApplicationRecord
  validates_presence_of :title,
                        :authors,
                        :source,
                        :image_url,
                        :content,
                        :publication_date,
                        :description
  belongs_to :project
end
