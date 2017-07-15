class ArticuloSuplidor
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated
  field :codigo_articulo, type: String
  field :codigo_suplidos, type: String
  field :tiempo_entrega, type: Integer
  field :precio_compra, type: Integer
end
