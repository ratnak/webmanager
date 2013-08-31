class WebFoldersController < ApplicationController
#  before_filter :authenticate_user!


  def show
  	@web_folder = WebFolder.find(params[:id])
	  respond_to do |format|
	  format.html {}
    end
  end



end
