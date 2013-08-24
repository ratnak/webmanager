require 'test_helper'

class WebsiteMenuItemsControllerTest < ActionController::TestCase
  setup do
    @website_menu_item = website_menu_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:website_menu_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create website_menu_item" do
    assert_difference('WebsiteMenuItem.count') do
      post :create, website_menu_item: { main_menu_id: @website_menu_item.main_menu_id, title: @website_menu_item.title }
    end

    assert_redirected_to website_menu_item_path(assigns(:website_menu_item))
  end

  test "should show website_menu_item" do
    get :show, id: @website_menu_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @website_menu_item
    assert_response :success
  end

  test "should update website_menu_item" do
    put :update, id: @website_menu_item, website_menu_item: { main_menu_id: @website_menu_item.main_menu_id, title: @website_menu_item.title }
    assert_redirected_to website_menu_item_path(assigns(:website_menu_item))
  end

  test "should destroy website_menu_item" do
    assert_difference('WebsiteMenuItem.count', -1) do
      delete :destroy, id: @website_menu_item
    end

    assert_redirected_to website_menu_items_path
  end
end
