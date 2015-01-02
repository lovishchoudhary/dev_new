require 'test_helper'

class GroundsControllerTest < ActionController::TestCase
  setup do
    @ground = grounds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grounds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ground" do
    assert_difference('Ground.count') do
      post :create, ground: { ground_description: @ground.ground_description, ground_id: @ground.ground_id, ground_name: @ground.ground_name, sc_id: @ground.sc_id }
    end

    assert_redirected_to ground_path(assigns(:ground))
  end

  test "should show ground" do
    get :show, id: @ground
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ground
    assert_response :success
  end

  test "should update ground" do
    patch :update, id: @ground, ground: { ground_description: @ground.ground_description, ground_id: @ground.ground_id, ground_name: @ground.ground_name, sc_id: @ground.sc_id }
    assert_redirected_to ground_path(assigns(:ground))
  end

  test "should destroy ground" do
    assert_difference('Ground.count', -1) do
      delete :destroy, id: @ground
    end

    assert_redirected_to grounds_path
  end
end
