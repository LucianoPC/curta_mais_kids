require 'test_helper'

class ChildrenEventsControllerTest < ActionController::TestCase
  setup do
    @children_event = children_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:children_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create children_event" do
    assert_difference('ChildrenEvent.count') do
      post :create, children_event: { date_time: @children_event.date_time, description: @children_event.description, localization: @children_event.localization, phone: @children_event.phone, price: @children_event.price, rating: @children_event.rating, title: @children_event.title }
    end

    assert_redirected_to children_event_path(assigns(:children_event))
  end

  test "should show children_event" do
    get :show, id: @children_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @children_event
    assert_response :success
  end

  test "should update children_event" do
    patch :update, id: @children_event, children_event: { date_time: @children_event.date_time, description: @children_event.description, localization: @children_event.localization, phone: @children_event.phone, price: @children_event.price, rating: @children_event.rating, title: @children_event.title }
    assert_redirected_to children_event_path(assigns(:children_event))
  end

  test "should destroy children_event" do
    assert_difference('ChildrenEvent.count', -1) do
      delete :destroy, id: @children_event
    end

    assert_redirected_to children_events_path
  end
end
