class Articulo
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated
  field :codigo_articulo, type: String
  field :descripcion, type: String
  field :unidad_compra_diaria, type: Integer
  field :total_inventario, type: Integer
end
