class WebLinksController < ApplicationController
#  before_filter :authenticate_user!


  def show
  	@web_link = WebLink.find(params[:id])
			respond_to do |format|
			 format.html {}
		  end
  end


end
