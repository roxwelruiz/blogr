class AddAbstractToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :abstract, :text
  end
end
