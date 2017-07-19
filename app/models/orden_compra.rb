require 'pp'
class OrdenCompra
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated
  field :codigo_orden, type: String
  field :fecha_orden, type: DateTime
  field :monto_total, type: Integer
  field :articulos, type: Array


  validates :monto_total, presence: true
  validate :date_cannot_be_in_the_past

  def date_cannot_be_in_the_past
    if fecha_orden.present? && fecha_orden < Date.today
      errors.add(:fecha_orden, "can't be in the past")
    end
  end


  def articulos_for_form=(value_from_form)
    value_from_form = "" unless value_from_form.respond_to(:split)
    self.articulos = value_from_form.split(',')
  end

  def articulos_for_form
    self.articulos
  end


  def total_de_la_orden
    sum=0
    self.articulos.each do |x|
      sum+= x[:suplidor][:precio_compra]
    end
    sum
  end


end
