require 'test_helper'

class ArticulosFacturasControllerTest < ActionController::TestCase
  setup do
    @articulos_factura = articulos_facturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articulos_facturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create articulos_factura" do
    assert_difference('ArticulosFactura.count') do
      post :create, articulos_factura: @articulos_factura.attributes
    end

    assert_redirected_to articulos_factura_path(assigns(:articulos_factura))
  end

  test "should show articulos_factura" do
    get :show, id: @articulos_factura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @articulos_factura
    assert_response :success
  end

  test "should update articulos_factura" do
    put :update, id: @articulos_factura, articulos_factura: @articulos_factura.attributes
    assert_redirected_to articulos_factura_path(assigns(:articulos_factura))
  end

  test "should destroy articulos_factura" do
    assert_difference('ArticulosFactura.count', -1) do
      delete :destroy, id: @articulos_factura
    end

    assert_redirected_to articulos_facturas_path
  end
end
