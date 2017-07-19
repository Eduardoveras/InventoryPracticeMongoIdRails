# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


2.times do
  Articulo.create!([{codigo_articulo: Faker::Code.unique.asin,
                     descripcion: Faker::GameOfThrones.character,
                     unidad_compra_diaria: Faker::Number.between(10, 100),
                     total_inventario: Faker::Number.between(200, 600)
                    }])
end


Articulo.each do |articulo|
  suplidores = []
  rand(1..5).times do
    suplidores.push({
                        codigo_suplidos: Faker::Code.unique.asin,
                        tiempo_entrega: Faker::Number.between(1, 15),
                        precio_compra: Faker::Number.between(200, 600)
                    })
  end
  articulo.suplidores = suplidores
  articulo.save!
end



