class RemovePostedFromArticles < ActiveRecord::Migration[5.0]
  def change
    remove_column :articles, :posted, :timestamp
  end
end
