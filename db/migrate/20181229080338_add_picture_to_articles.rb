class AddPictureToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :picture, :string
  end
end
