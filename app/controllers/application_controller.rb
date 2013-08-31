class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_web_menus




  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, :alert => exception.message
  end


  private

  def load_web_menus
	@web_menu_sections = WebMenuSection.all
  end

end
