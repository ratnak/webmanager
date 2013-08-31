class WebArticlesController < ApplicationController
#  before_filter :authenticate_user!
  def index
    @web_articles = WebArticle.all
  end               

  def new
	@web_article = WebArticle.new
  end 


  def show
  	@web_article = WebArticle.find(params[:id])
	respond_to do |format|
	  format.html {}
    end
  end



end
