json.extract! movimiento_inventario, :id, :codigo_movimiento, :codigo_almacen, :tipo_movimiento, :codigo_articulo, :cantidad, :created_at, :updated_at
json.url movimiento_inventario_url(movimiento_inventario, format: :json)
