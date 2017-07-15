json.extract! articulo, :id, :codigo_articulo, :descripcion, :unidad_compra_diaria, :total_inventario, :created_at, :updated_at
json.url articulo_url(articulo, format: :json)
