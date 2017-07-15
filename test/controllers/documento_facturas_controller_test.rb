require 'test_helper'

class DocumentoFacturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @documento_factura = documento_facturas(:one)
  end

  test "should get index" do
    get documento_facturas_url
    assert_response :success
  end

  test "should get new" do
    get new_documento_factura_url
    assert_response :success
  end

  test "should create documento_factura" do
    assert_difference('DocumentoFactura.count') do
      post documento_facturas_url, params: { documento_factura: { articulos: @documento_factura.articulos, ciudadDespacho: @documento_factura.ciudadDespacho, ciudadFactura: @documento_factura.ciudadFactura, codigoCliente: @documento_factura.codigoCliente, codigoFactura: @documento_factura.codigoFactura, fechaFactura: @documento_factura.fechaFactura, nombreCliente: @documento_factura.nombreCliente, sucursal: @documento_factura.sucursal, totalFactura: @documento_factura.totalFactura } }
    end

    assert_redirected_to documento_factura_url(DocumentoFactura.last)
  end

  test "should show documento_factura" do
    get documento_factura_url(@documento_factura)
    assert_response :success
  end

  test "should get edit" do
    get edit_documento_factura_url(@documento_factura)
    assert_response :success
  end

  test "should update documento_factura" do
    patch documento_factura_url(@documento_factura), params: { documento_factura: { articulos: @documento_factura.articulos, ciudadDespacho: @documento_factura.ciudadDespacho, ciudadFactura: @documento_factura.ciudadFactura, codigoCliente: @documento_factura.codigoCliente, codigoFactura: @documento_factura.codigoFactura, fechaFactura: @documento_factura.fechaFactura, nombreCliente: @documento_factura.nombreCliente, sucursal: @documento_factura.sucursal, totalFactura: @documento_factura.totalFactura } }
    assert_redirected_to documento_factura_url(@documento_factura)
  end

  test "should destroy documento_factura" do
    assert_difference('DocumentoFactura.count', -1) do
      delete documento_factura_url(@documento_factura)
    end

    assert_redirected_to documento_facturas_url
  end
end
