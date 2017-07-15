require 'test_helper'

class ArticuloSuplidorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articulo_suplidor = articulo_suplidors(:one)
  end

  test "should get index" do
    get articulo_suplidors_url
    assert_response :success
  end

  test "should get new" do
    get new_articulo_suplidor_url
    assert_response :success
  end

  test "should create articulo_suplidor" do
    assert_difference('ArticuloSuplidor.count') do
      post articulo_suplidors_url, params: { articulo_suplidor: { codigo_articulo: @articulo_suplidor.codigo_articulo, codigo_suplidos: @articulo_suplidor.codigo_suplidos, precio_compra: @articulo_suplidor.precio_compra, tiempo_entrega: @articulo_suplidor.tiempo_entrega } }
    end

    assert_redirected_to articulo_suplidor_url(ArticuloSuplidor.last)
  end

  test "should show articulo_suplidor" do
    get articulo_suplidor_url(@articulo_suplidor)
    assert_response :success
  end

  test "should get edit" do
    get edit_articulo_suplidor_url(@articulo_suplidor)
    assert_response :success
  end

  test "should update articulo_suplidor" do
    patch articulo_suplidor_url(@articulo_suplidor), params: { articulo_suplidor: { codigo_articulo: @articulo_suplidor.codigo_articulo, codigo_suplidos: @articulo_suplidor.codigo_suplidos, precio_compra: @articulo_suplidor.precio_compra, tiempo_entrega: @articulo_suplidor.tiempo_entrega } }
    assert_redirected_to articulo_suplidor_url(@articulo_suplidor)
  end

  test "should destroy articulo_suplidor" do
    assert_difference('ArticuloSuplidor.count', -1) do
      delete articulo_suplidor_url(@articulo_suplidor)
    end

    assert_redirected_to articulo_suplidors_url
  end
end
