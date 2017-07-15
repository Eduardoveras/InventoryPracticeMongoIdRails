class OrdenCompra
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated
  field :codigo_orden, type: String
  field :codigo_suplidor, type: String
  field :fecha_orden, type: DateTime
  field :monto_total, type: Integer
  field :articulos, type: String
end
