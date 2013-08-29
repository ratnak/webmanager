class WebMenuSection < ActiveRecord::Base
  # attr_accessible :title, :body
    attr_accessible :name
  has_many :web_menu_items
end
