require 'test_helper'

class ChildrenPlacesControllerTest < ActionController::TestCase
  setup do
    @children_place = children_places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:children_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create children_place" do
    assert_difference('ChildrenPlace.count') do
      post :create, children_place: { address: @children_place.address, description: @children_place.description, localization: @children_place.localization, name: @children_place.name, phone: @children_place.phone, photo: @children_place.photo, price: @children_place.price, rating: @children_place.rating }
    end

    assert_redirected_to children_place_path(assigns(:children_place))
  end

  test "should show children_place" do
    get :show, id: @children_place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @children_place
    assert_response :success
  end

  test "should update children_place" do
    patch :update, id: @children_place, children_place: { address: @children_place.address, description: @children_place.description, localization: @children_place.localization, name: @children_place.name, phone: @children_place.phone, photo: @children_place.photo, price: @children_place.price, rating: @children_place.rating }
    assert_redirected_to children_place_path(assigns(:children_place))
  end

  test "should destroy children_place" do
    assert_difference('ChildrenPlace.count', -1) do
      delete :destroy, id: @children_place
    end

    assert_redirected_to children_places_path
  end
end
