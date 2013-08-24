class WebsiteMenuItem < ActiveRecord::Base
  
  belongs_to :main_menu
  attr_accessible :main_menu_id, :title
end
