class CreateWebArticles < ActiveRecord::Migration
  def change
    create_table :web_articles do |t|
      t.column :name, :string
      t.column :main_image, :string
      t.column :summary, :text
      t.column :content, :text
      t.column :web_menu_item_id, :integer
      t.timestamps
    end
  end
end
