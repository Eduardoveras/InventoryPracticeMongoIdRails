json.extract! orden_compra, :id, :codigo_orden, :codigo_suplidor, :fecha_orden, :monto_total, :articulos, :created_at, :updated_at
json.url orden_compra_url(orden_compra, format: :json)
