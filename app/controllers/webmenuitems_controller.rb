class Admin::WebmenuitemsController < ApplicationController
#  before_filter :authenticate_user!
  def home
    @web_menu_items = WebMenuItem.find(:all, :conditions => ["name = ?", web_menu_section_id])
  end

  def index
    @web_menu_items = WebMenuItem.find(:all)
  end

  def new
    @web_menu_item = WebMenuItem.new   
  end 


  def sub_menu
    #render :text => params.inspect and return
    @web_menu_item = WebMenuItem.new(params[:web_menu_item]) 
    @web_menu_item.web_articles.build
    @web_menu_item.web_links.build  
    @web_menu_item.web_folders.build
  end 




  def create
   #render :text => params.inspect and return
    begin
    @web_menu_item = WebMenuItem.new(params[:web_menu_item])
          if @web_menu_item.save
            flash[:notice] = 'Menu was successfully created'
            redirect_to admin_webmenuitems_url
          else
              flash[:error] = 'Unable to create Menu item'
            render :action => 'new'
          end
      rescue Exception => exception
           log_exception(exception)
           flash[:error] = "There is a problem to create new menu item"
           redirect_to client_list_url 
     end
  end





end
