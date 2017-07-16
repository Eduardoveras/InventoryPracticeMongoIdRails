class MovimientoInventario
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated
  field :codigo_movimiento, type: String
  field :tipo_movimiento, type: String
  field :codigo_articulo, type: String
  field :cantidad, type: Integer
end
