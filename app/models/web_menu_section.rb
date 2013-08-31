class WebMenuSection < ActiveRecord::Base
  # attr_accessible :title, :body
    attr_accessible :name ,:web_menu_items_attributes
   
    has_many :web_menu_items , :dependent => :destroy
    accepts_nested_attributes_for :web_menu_items
end
