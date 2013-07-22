require 'test_helper'

class DashesControllerTest < ActionController::TestCase
  setup do
    @dash = dashes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dashes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dash" do
    assert_difference('Dash.count') do
      post :create, dash: { clock_in_out: @dash.clock_in_out, dash_at: @dash.dash_at, user_id: @dash.user_id }
    end

    assert_redirected_to dash_path(assigns(:dash))
  end

  test "should show dash" do
    get :show, id: @dash
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dash
    assert_response :success
  end

  test "should update dash" do
    put :update, id: @dash, dash: { clock_in_out: @dash.clock_in_out, dash_at: @dash.dash_at, user_id: @dash.user_id }
    assert_redirected_to dash_path(assigns(:dash))
  end

  test "should destroy dash" do
    assert_difference('Dash.count', -1) do
      delete :destroy, id: @dash
    end

    assert_redirected_to dashes_path
  end
end
