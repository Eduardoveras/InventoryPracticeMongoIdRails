class ArticuloSuplidorsController < ApplicationController
  before_action :set_articulo_suplidor, only: [:show, :edit, :update, :destroy]

  # GET /articulo_suplidors
  # GET /articulo_suplidors.json
  def index
    @articulo_suplidors = ArticuloSuplidor.all
  end

  # GET /articulo_suplidors/1
  # GET /articulo_suplidors/1.json
  def show
  end

  # GET /articulo_suplidors/new
  def new
    @articulo_suplidor = ArticuloSuplidor.new
  end

  # GET /articulo_suplidors/1/edit
  def edit
  end

  # POST /articulo_suplidors
  # POST /articulo_suplidors.json
  def create
    @articulo_suplidor = ArticuloSuplidor.new(articulo_suplidor_params)

    respond_to do |format|
      if @articulo_suplidor.save
        format.html { redirect_to @articulo_suplidor, notice: 'Articulo suplidor was successfully created.' }
        format.json { render :show, status: :created, location: @articulo_suplidor }
      else
        format.html { render :new }
        format.json { render json: @articulo_suplidor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articulo_suplidors/1
  # PATCH/PUT /articulo_suplidors/1.json
  def update
    respond_to do |format|
      if @articulo_suplidor.update(articulo_suplidor_params)
        format.html { redirect_to @articulo_suplidor, notice: 'Articulo suplidor was successfully updated.' }
        format.json { render :show, status: :ok, location: @articulo_suplidor }
      else
        format.html { render :edit }
        format.json { render json: @articulo_suplidor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articulo_suplidors/1
  # DELETE /articulo_suplidors/1.json
  def destroy
    @articulo_suplidor.destroy
    respond_to do |format|
      format.html { redirect_to articulo_suplidors_url, notice: 'Articulo suplidor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articulo_suplidor
      @articulo_suplidor = ArticuloSuplidor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def articulo_suplidor_params
      params.require(:articulo_suplidor).permit(:codigo_articulo, :codigo_suplidos, :tiempo_entrega, :precio_compra)
    end
end
