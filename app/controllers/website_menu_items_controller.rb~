class WebsiteMenuItemsController < ApplicationController
  # GET /website_menu_items
  # GET /website_menu_items.json
  filter_resource_access
  def index
    @main_navs = MainMenu.all
    @website_menu_items = WebsiteMenuItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @website_menu_items }
    end
  end

  # GET /website_menu_items/1
  # GET /website_menu_items/1.json
  def show
    @website_menu_item = WebsiteMenuItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @website_menu_item }
    end
  end

  # GET /website_menu_items/new
  # GET /website_menu_items/new.json
  def new
    
    @website_menu_item = WebsiteMenuItem.new(params[:website_menu_item])
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @website_menu_item }
    end
  end

  # GET /website_menu_items/1/edit
  def edit
    @website_menu_item = WebsiteMenuItem.find(params[:id])
  end

  # POST /website_menu_items
  # POST /website_menu_items.json
  def create
 
    #@main_menu = MainMenu.find(params[:main_menu_id])
    @website_menu_item = WebsiteMenuItem.new(params[:website_menu_item])
    #render :text => params.inspect and return
    respond_to do |format|
      if @website_menu_item.save
        format.html { redirect_to @website_menu_item, notice: 'Website menu item was successfully created.' }
        format.json { render json: @website_menu_item, status: :created, location: @website_menu_item }
      else
        format.html { render action: "new" }
        format.json { render json: @website_menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /website_menu_items/1
  # PUT /website_menu_items/1.json
  def update
    @website_menu_item = WebsiteMenuItem.find(params[:id])

    respond_to do |format|
      if @website_menu_item.update_attributes(params[:website_menu_item])
        format.html { redirect_to @website_menu_item, notice: 'Website menu item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @website_menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /website_menu_items/1
  # DELETE /website_menu_items/1.json
  def destroy
    @website_menu_item = WebsiteMenuItem.find(params[:id])
    @website_menu_item.destroy

    respond_to do |format|
      format.html { redirect_to website_menu_items_url }
      format.json { head :no_content }
    end
  end
end
