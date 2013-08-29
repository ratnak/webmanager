class WebMenuItem < ActiveRecord::Base

    belongs_to :web_menu_section
    attr_accessor :menu_type 
    attr_accessible :name ,:menu_type, :web_menu_section_id, :web_articles_attributes, :web_links_attributes, :web_folders_attributes 
     
    has_many :web_folders
    has_many :web_links
    has_many :web_articles
     	
    accepts_nested_attributes_for :web_articles
    accepts_nested_attributes_for :web_links
    accepts_nested_attributes_for :web_folders

end


