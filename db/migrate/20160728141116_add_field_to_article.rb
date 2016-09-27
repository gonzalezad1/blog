class AddFieldToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :view, :integer
    
  end
end
