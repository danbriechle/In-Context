class CreateArticle < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :authors
      t.string :source
      t.string :image_url
      t.string :content
      t.string :publication_date
      t.string :description
      t.references :project, foreign_key: true
    end
  end
end
