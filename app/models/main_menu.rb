class MainMenu < ActiveRecord::Base
  attr_accessible :title
  has_many :website_menu_items
end
