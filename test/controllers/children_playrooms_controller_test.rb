require 'test_helper'

class ChildrenPlayroomsControllerTest < ActionController::TestCase
  setup do
    @children_playroom = children_playrooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:children_playrooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create children_playroom" do
    assert_difference('ChildrenPlayroom.count') do
      post :create, children_playroom: { address: @children_playroom.address, description: @children_playroom.description, localization: @children_playroom.localization, name: @children_playroom.name, phone: @children_playroom.phone, photo: @children_playroom.photo, price: @children_playroom.price, rating: @children_playroom.rating }
    end

    assert_redirected_to children_playroom_path(assigns(:children_playroom))
  end

  test "should show children_playroom" do
    get :show, id: @children_playroom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @children_playroom
    assert_response :success
  end

  test "should update children_playroom" do
    patch :update, id: @children_playroom, children_playroom: { address: @children_playroom.address, description: @children_playroom.description, localization: @children_playroom.localization, name: @children_playroom.name, phone: @children_playroom.phone, photo: @children_playroom.photo, price: @children_playroom.price, rating: @children_playroom.rating }
    assert_redirected_to children_playroom_path(assigns(:children_playroom))
  end

  test "should destroy children_playroom" do
    assert_difference('ChildrenPlayroom.count', -1) do
      delete :destroy, id: @children_playroom
    end

    assert_redirected_to children_playrooms_path
  end
end
