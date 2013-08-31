class WebLink < ActiveRecord::Base
  # attr_accessible :title, :body
attr_accessible :web_menu_item_id, :name, :url 
belongs_to :web_menu_item
#attr_accessor:web_menu_section_id, :menu_type


before_save :clean_url


  def clean_url
    unless self.url =~ /https?:\/\/.*/
       write_attribute :url, "http://" + self.url.to_s
    else
       write_attribute :url, self.url
    end
  end


end
