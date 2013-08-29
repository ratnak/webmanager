class CreateWebFolders < ActiveRecord::Migration
  def change
    create_table :web_folders do |t|
      t.column :name, :string
      t.column :web_menu_item_id, :integer
      t.timestamps
    end
  end
end
