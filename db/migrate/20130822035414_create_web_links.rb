class CreateWebLinks < ActiveRecord::Migration
  def change
    create_table :web_links do |t|
      t.column :name, :string
      t.column :url, :string
      t.column :web_menu_item_id, :integer
      t.timestamps
    end
  end
end
