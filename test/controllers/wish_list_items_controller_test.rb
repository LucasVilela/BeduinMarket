require 'test_helper'

class WishListItemsControllerTest < ActionController::TestCase
  setup do
    @wish_list_item = wish_list_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wish_list_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wish_list_item" do
    assert_difference('WishListItem.count') do
      post :create, wish_list_item: { product_id: @wish_list_item.product_id, wishlist_id: @wish_list_item.wishlist_id }
    end

    assert_redirected_to wish_list_item_path(assigns(:wish_list_item))
  end

  test "should show wish_list_item" do
    get :show, id: @wish_list_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wish_list_item
    assert_response :success
  end

  test "should update wish_list_item" do
    patch :update, id: @wish_list_item, wish_list_item: { product_id: @wish_list_item.product_id, wishlist_id: @wish_list_item.wishlist_id }
    assert_redirected_to wish_list_item_path(assigns(:wish_list_item))
  end

  test "should destroy wish_list_item" do
    assert_difference('WishListItem.count', -1) do
      delete :destroy, id: @wish_list_item
    end

    assert_redirected_to wish_list_items_path
  end
end
