class WebLink < ActiveRecord::Base
  # attr_accessible :title, :body
attr_accessible :name, :url 
belongs_to :web_menu_item
#attr_accessor:web_menu_section_id, :menu_type
end
