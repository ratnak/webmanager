class WebArticle < ActiveRecord::Base
    attr_accessible :name, :summary, :content
    belongs_to :web_menu_item
    #attr_accessor:web_menu_section_id, :menu_type

end
