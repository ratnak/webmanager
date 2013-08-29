class HomeController < ApplicationController
  #before_filter :authenticate_user!
  def index
    @web_menu_sections = WebMenuSection.find(:all)
  end
end

