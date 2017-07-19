class Articulo
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated
  field :codigo_articulo, type: String
  field :descripcion, type: String
  field :unidad_compra_diaria, type: Integer
  field :total_inventario, type: Integer
  field :suplidores, type: Array


  def fecha_de_acabado
    self.total_inventario/self.unidad_compra_diaria
  end

  index({codigo_articulo: 1}, {unique: true})

end
