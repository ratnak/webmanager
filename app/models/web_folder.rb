class WebFolder < ActiveRecord::Base
  # attr_accessible :title, :body
attr_accessible :name
belongs_to :web_menu_item
#attr_accessor:web_menu_section_id, :menu_type
end
