json.extract! articulo_suplidor, :id, :codigo_articulo, :codigo_suplidos, :tiempo_entrega, :precio_compra, :created_at, :updated_at
json.url articulo_suplidor_url(articulo_suplidor, format: :json)
