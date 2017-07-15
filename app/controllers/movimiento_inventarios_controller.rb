class MovimientoInventariosController < ApplicationController
  before_action :set_movimiento_inventario, only: [:show, :edit, :update, :destroy]

  # GET /movimiento_inventarios
  # GET /movimiento_inventarios.json
  def index
    @movimiento_inventarios = MovimientoInventario.all
  end

  # GET /movimiento_inventarios/1
  # GET /movimiento_inventarios/1.json
  def show
  end

  # GET /movimiento_inventarios/new
  def new
    @movimiento_inventario = MovimientoInventario.new
  end

  # GET /movimiento_inventarios/1/edit
  def edit
  end

  # POST /movimiento_inventarios
  # POST /movimiento_inventarios.json
  def create
    @movimiento_inventario = MovimientoInventario.new(movimiento_inventario_params)

    respond_to do |format|
      if @movimiento_inventario.save
        format.html { redirect_to @movimiento_inventario, notice: 'Movimiento inventario was successfully created.' }
        format.json { render :show, status: :created, location: @movimiento_inventario }
      else
        format.html { render :new }
        format.json { render json: @movimiento_inventario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movimiento_inventarios/1
  # PATCH/PUT /movimiento_inventarios/1.json
  def update
    respond_to do |format|
      if @movimiento_inventario.update(movimiento_inventario_params)
        format.html { redirect_to @movimiento_inventario, notice: 'Movimiento inventario was successfully updated.' }
        format.json { render :show, status: :ok, location: @movimiento_inventario }
      else
        format.html { render :edit }
        format.json { render json: @movimiento_inventario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movimiento_inventarios/1
  # DELETE /movimiento_inventarios/1.json
  def destroy
    @movimiento_inventario.destroy
    respond_to do |format|
      format.html { redirect_to movimiento_inventarios_url, notice: 'Movimiento inventario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimiento_inventario
      @movimiento_inventario = MovimientoInventario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movimiento_inventario_params
      params.require(:movimiento_inventario).permit(:codigo_movimiento, :codigo_almacen, :tipo_movimiento, :codigo_articulo, :cantidad)
    end
end
