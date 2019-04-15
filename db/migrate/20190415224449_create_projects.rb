class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :media
      t.string :duedate
      t.string :searchtag
      t.references :user, foreign_key: true
    end
  end
end
