class CreateWebMenuItems < ActiveRecord::Migration
  def change
    create_table :web_menu_items do |t|
      t.column :name, :string
      t.column :image, :string
      t.column :web_menu_section_id, :integer

      t.timestamps
    end
  end
end
