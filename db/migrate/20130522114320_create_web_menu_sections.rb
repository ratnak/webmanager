class CreateWebMenuSections < ActiveRecord::Migration
  def change
    create_table :web_menu_sections do |t|
      t.column :name, :string
      t.timestamps
    end
  end
end
