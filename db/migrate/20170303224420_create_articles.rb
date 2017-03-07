class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.timestamp :posted
      t.text :text
      t.string :image

      t.timestamps
    end
  end
end
