class OrdenComprasController < ApplicationController
  before_action :set_orden_compra, only: [:show, :edit, :update, :destroy]

  # GET /orden_compras
  # GET /orden_compras.json
  def index
    @orden_compras = OrdenCompra.all
  end

  # GET /orden_compras/1
  # GET /orden_compras/1.json
  def show
  end

  # GET /orden_compras/new
  def new
    @orden_compra = OrdenCompra.new
  end

  # GET /orden_compras/1/edit
  def edit
  end

  # POST /orden_compras
  # POST /orden_compras.json
  def create
    @orden_compra = OrdenCompra.new(orden_compra_params)
    # @orden_compra.fecha_orden ||= Date.today


    formated_date = Date.new(orden_compra_params["fecha_orden(1i)"].to_i,
                             orden_compra_params["fecha_orden(2i)"].to_i,
                             orden_compra_params["fecha_orden(3i)"].to_i)
    @orden_compra.fecha_orden =formated_date


    @orden_compra.codigo_orden = Faker::Code.unique.ean
    lista_articulos = []
    @orden_compra.articulos.each do |art|
      if art != ""
        articulo = Articulo.find_by(codigo_articulo: art)
        menor_tiempo = (formated_date - Date.today).to_i
        precio_actual = 9999
        suplidor_selecionado = nil
        articulo.suplidores.each do |suplidor|
          if suplidor[:tiempo_entrega] < menor_tiempo
            if suplidor[:precio_compra] < precio_actual
              suplidor_selecionado= suplidor
              precio_actual = suplidor[:precio_compra]
            end
          end
        end

        lista_articulos.push(
            codigo_articulo: articulo.codigo_articulo,
            cantidad: @orden_compra.monto_total,
            suplidor: suplidor_selecionado || articulo.suplidores[0]
        )
      end

    end
    @orden_compra.articulos = lista_articulos


    respond_to do |format|
      if @orden_compra.save
        format.html {redirect_to @orden_compra, notice: 'Orden compra was successfully created.'}
        format.json {render :show, status: :created, location: @orden_compra}
      else
        format.html {render :new}
        format.json {render json: @orden_compra.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /orden_compras/1
  # PATCH/PUT /orden_compras/1.json
  def update

    formated_date = Date.new(orden_compra_params["fecha_orden(1i)"].to_i,
                             orden_compra_params["fecha_orden(2i)"].to_i,
                             orden_compra_params["fecha_orden(3i)"].to_i)

    orden_compra_params[:fecha_orden]=formated_date

    respond_to do |format|
      if @orden_compra.update(orden_compra_params)
        format.html {redirect_to @orden_compra, notice: 'Orden compra was successfully updated.'}
        format.json {render :show, status: :ok, location: @orden_compra}
      else
        format.html {render :edit}
        format.json {render json: @orden_compra.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /orden_compras/1
  # DELETE /orden_compras/1.json
  def destroy
    @orden_compra.destroy
    respond_to do |format|
      format.html {redirect_to orden_compras_url, notice: 'Orden compra was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_orden_compra
    @orden_compra = OrdenCompra.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def orden_compra_params
    params.require(:orden_compra).permit(:codigo_orden, :codigo_suplidor, "fecha_orden(1i)".to_sym, "fecha_orden(1i)".to_sym, "fecha_orden(1i)".to_sym, :fecha_orden, :monto_total, :articulos => [])
  end
end
