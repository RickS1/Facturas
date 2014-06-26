require 'test_helper'

class SubcuentaControllerTest < ActionController::TestCase
  setup do
    @subcuentum = subcuenta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subcuenta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subcuentum" do
    assert_difference('Subcuentum.count') do
      post :create, subcuentum: @subcuentum.attributes
    end

    assert_redirected_to subcuentum_path(assigns(:subcuentum))
  end

  test "should show subcuentum" do
    get :show, id: @subcuentum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subcuentum
    assert_response :success
  end

  test "should update subcuentum" do
    put :update, id: @subcuentum, subcuentum: @subcuentum.attributes
    assert_redirected_to subcuentum_path(assigns(:subcuentum))
  end

  test "should destroy subcuentum" do
    assert_difference('Subcuentum.count', -1) do
      delete :destroy, id: @subcuentum
    end

    assert_redirected_to subcuenta_path
  end
end
