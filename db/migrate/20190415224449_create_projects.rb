class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :media
      t.string :due_date
      t.string :search_tag
      t.references :user, foreign_key: true
    end
  end
end
