require 'test_helper'

class ScsControllerTest < ActionController::TestCase
  setup do
    @sc = scs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sc" do
    assert_difference('Sc.count') do
      post :create, sc: { city_id: @sc.city_id, sc_location: @sc.sc_location, sc_name: @sc.sc_name, scs_id: @sc.scs_id }
    end

    assert_redirected_to sc_path(assigns(:sc))
  end

  test "should show sc" do
    get :show, id: @sc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sc
    assert_response :success
  end

  test "should update sc" do
    patch :update, id: @sc, sc: { city_id: @sc.city_id, sc_location: @sc.sc_location, sc_name: @sc.sc_name, scs_id: @sc.scs_id }
    assert_redirected_to sc_path(assigns(:sc))
  end

  test "should destroy sc" do
    assert_difference('Sc.count', -1) do
      delete :destroy, id: @sc
    end

    assert_redirected_to scs_path
  end
end
