require 'test_helper'

class DressesControllerTest < ActionController::TestCase
  setup do
    @dress = dresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dress" do
    assert_difference('Dress.count') do
      post :create, dress: @dress.attributes
    end

    assert_redirected_to dress_path(assigns(:dress))
  end

  test "should show dress" do
    get :show, id: @dress.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dress.to_param
    assert_response :success
  end

  test "should update dress" do
    put :update, id: @dress.to_param, dress: @dress.attributes
    assert_redirected_to dress_path(assigns(:dress))
  end

  test "should destroy dress" do
    assert_difference('Dress.count', -1) do
      delete :destroy, id: @dress.to_param
    end

    assert_redirected_to dresses_path
  end
end
