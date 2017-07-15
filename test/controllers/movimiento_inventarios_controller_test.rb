require 'test_helper'

class MovimientoInventariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movimiento_inventario = movimiento_inventarios(:one)
  end

  test "should get index" do
    get movimiento_inventarios_url
    assert_response :success
  end

  test "should get new" do
    get new_movimiento_inventario_url
    assert_response :success
  end

  test "should create movimiento_inventario" do
    assert_difference('MovimientoInventario.count') do
      post movimiento_inventarios_url, params: { movimiento_inventario: { cantidad: @movimiento_inventario.cantidad, codigo_almacen: @movimiento_inventario.codigo_almacen, codigo_articulo: @movimiento_inventario.codigo_articulo, codigo_movimiento: @movimiento_inventario.codigo_movimiento, tipo_movimiento: @movimiento_inventario.tipo_movimiento } }
    end

    assert_redirected_to movimiento_inventario_url(MovimientoInventario.last)
  end

  test "should show movimiento_inventario" do
    get movimiento_inventario_url(@movimiento_inventario)
    assert_response :success
  end

  test "should get edit" do
    get edit_movimiento_inventario_url(@movimiento_inventario)
    assert_response :success
  end

  test "should update movimiento_inventario" do
    patch movimiento_inventario_url(@movimiento_inventario), params: { movimiento_inventario: { cantidad: @movimiento_inventario.cantidad, codigo_almacen: @movimiento_inventario.codigo_almacen, codigo_articulo: @movimiento_inventario.codigo_articulo, codigo_movimiento: @movimiento_inventario.codigo_movimiento, tipo_movimiento: @movimiento_inventario.tipo_movimiento } }
    assert_redirected_to movimiento_inventario_url(@movimiento_inventario)
  end

  test "should destroy movimiento_inventario" do
    assert_difference('MovimientoInventario.count', -1) do
      delete movimiento_inventario_url(@movimiento_inventario)
    end

    assert_redirected_to movimiento_inventarios_url
  end
end
