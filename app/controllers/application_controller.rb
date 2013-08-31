class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_web_menus


  private

  def load_web_menus
	@web_menu_sections = WebMenuSection.all
  end

end
