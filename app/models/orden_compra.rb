class OrdenCompra
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated
  field :codigo_orden, type: String
  field :codigo_suplidor, type: String
  field :fecha_orden, type: DateTime
  field :monto_total, type: Integer
  field :articulos, type: Array


  def articulos_for_form=(value_from_form)
    value_from_form = "" unless value_from_form.respond_to(:split)

    self.articulos = value_from_form.split(',')
  end

  def articulos_for_form
    self.articulos
  end

end
