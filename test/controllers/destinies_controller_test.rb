require 'test_helper'

class DestiniesControllerTest < ActionController::TestCase
  setup do
    @destiny = destinies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:destinies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create destiny" do
    assert_difference('Destiny.count') do
      post :create, destiny: { airline: @destiny.airline, date: @destiny.date, location: @destiny.location }
    end

    assert_redirected_to destiny_path(assigns(:destiny))
  end

  test "should show destiny" do
    get :show, id: @destiny
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @destiny
    assert_response :success
  end

  test "should update destiny" do
    patch :update, id: @destiny, destiny: { airline: @destiny.airline, date: @destiny.date, location: @destiny.location }
    assert_redirected_to destiny_path(assigns(:destiny))
  end

  test "should destroy destiny" do
    assert_difference('Destiny.count', -1) do
      delete :destroy, id: @destiny
    end

    assert_redirected_to destinies_path
  end
end
