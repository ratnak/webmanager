class WebArticle < ActiveRecord::Base
  # attr_accessible :title, :body
    attr_accessible :name, :summary, :content
    belongs_to :web_menu_item
end
