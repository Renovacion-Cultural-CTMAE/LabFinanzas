class MovimientoRubrosController < ApplicationController
  before_action :set_movimiento_rubro, only: %i[ show edit update destroy ]

  # GET /movimiento_rubros or /movimiento_rubros.json
  def index
    @movimiento_rubros = MovimientoRubro.all
  end

  # GET /movimiento_rubros/1 or /movimiento_rubros/1.json
  def show
  end

  # GET /movimiento_rubros/new
  def new
    @movimiento_rubro = MovimientoRubro.new
  end

  # GET /movimiento_rubros/1/edit
  def edit
  end

  # POST /movimiento_rubros or /movimiento_rubros.json
  def create
    @movimiento_rubro = MovimientoRubro.new(movimiento_rubro_params)

    respond_to do |format|
      if @movimiento_rubro.save
        format.html { redirect_to movimiento_rubro_url(@movimiento_rubro), notice: "Movimiento rubro was successfully created." }
        format.json { render :show, status: :created, location: @movimiento_rubro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movimiento_rubro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movimiento_rubros/1 or /movimiento_rubros/1.json
  def update
    respond_to do |format|
      if @movimiento_rubro.update(movimiento_rubro_params)
        format.html { redirect_to movimiento_rubro_url(@movimiento_rubro), notice: "Movimiento rubro was successfully updated." }
        format.json { render :show, status: :ok, location: @movimiento_rubro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movimiento_rubro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movimiento_rubros/1 or /movimiento_rubros/1.json
  def destroy
    @movimiento_rubro.destroy

    respond_to do |format|
      format.html { redirect_to movimiento_rubros_url, notice: "Movimiento rubro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimiento_rubro
      @movimiento_rubro = MovimientoRubro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movimiento_rubro_params
      params.require(:movimiento_rubro).permit(:identificacion_rubro, :identificacion_rubro_interno, :presupuesto_inicial, :codigo_dependencia, :valor_movimiento, :tipo_movimiento, :codigo_resolucion, :fecha_resolucion, :observacion_resolucion)
    end
end
