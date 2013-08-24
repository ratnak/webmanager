class CreateWebsiteMenuItems < ActiveRecord::Migration
  def change
    create_table :website_menu_items do |t|
      t.integer :main_menu_id
      t.string :title

      t.timestamps
    end
  end
end
