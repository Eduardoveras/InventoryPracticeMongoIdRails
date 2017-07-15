require 'test_helper'

class OrdenComprasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orden_compra = orden_compras(:one)
  end

  test "should get index" do
    get orden_compras_url
    assert_response :success
  end

  test "should get new" do
    get new_orden_compra_url
    assert_response :success
  end

  test "should create orden_compra" do
    assert_difference('OrdenCompra.count') do
      post orden_compras_url, params: { orden_compra: { articulos: @orden_compra.articulos, codigo_orden: @orden_compra.codigo_orden, codigo_suplidor: @orden_compra.codigo_suplidor, fecha_orden: @orden_compra.fecha_orden, monto_total: @orden_compra.monto_total } }
    end

    assert_redirected_to orden_compra_url(OrdenCompra.last)
  end

  test "should show orden_compra" do
    get orden_compra_url(@orden_compra)
    assert_response :success
  end

  test "should get edit" do
    get edit_orden_compra_url(@orden_compra)
    assert_response :success
  end

  test "should update orden_compra" do
    patch orden_compra_url(@orden_compra), params: { orden_compra: { articulos: @orden_compra.articulos, codigo_orden: @orden_compra.codigo_orden, codigo_suplidor: @orden_compra.codigo_suplidor, fecha_orden: @orden_compra.fecha_orden, monto_total: @orden_compra.monto_total } }
    assert_redirected_to orden_compra_url(@orden_compra)
  end

  test "should destroy orden_compra" do
    assert_difference('OrdenCompra.count', -1) do
      delete orden_compra_url(@orden_compra)
    end

    assert_redirected_to orden_compras_url
  end
end
