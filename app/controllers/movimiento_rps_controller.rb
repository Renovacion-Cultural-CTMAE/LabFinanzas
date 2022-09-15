class MovimientoRpsController < ApplicationController
  before_action :set_movimiento_rp, only: %i[ show edit update destroy ]

  # GET /movimiento_rps or /movimiento_rps.json
  def index
    @movimiento_rps = MovimientoRp.all
  end

  # GET /movimiento_rps/1 or /movimiento_rps/1.json
  def show
  end

  # GET /movimiento_rps/new
  def new
    @movimiento_rp = MovimientoRp.new
  end

  # GET /movimiento_rps/1/edit
  def edit
  end

  # POST /movimiento_rps or /movimiento_rps.json
  def create
    @movimiento_rp = MovimientoRp.new(movimiento_rp_params)

    respond_to do |format|
      if @movimiento_rp.save
        format.html { redirect_to movimiento_rp_url(@movimiento_rp), notice: "Movimiento rp was successfully created." }
        format.json { render :show, status: :created, location: @movimiento_rp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movimiento_rp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movimiento_rps/1 or /movimiento_rps/1.json
  def update
    respond_to do |format|
      if @movimiento_rp.update(movimiento_rp_params)
        format.html { redirect_to movimiento_rp_url(@movimiento_rp), notice: "Movimiento rp was successfully updated." }
        format.json { render :show, status: :ok, location: @movimiento_rp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movimiento_rp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movimiento_rps/1 or /movimiento_rps/1.json
  def destroy
    @movimiento_rp.destroy

    respond_to do |format|
      format.html { redirect_to movimiento_rps_url, notice: "Movimiento rp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimiento_rp
      @movimiento_rp = MovimientoRp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movimiento_rp_params
      params.require(:movimiento_rp).permit(:identificacion_rubro, :identificacion_rubro_interno, :numero_rp, :concepto_movimiento_cdp, :valor_movimento_rp, :saldo_rp, :fecha_del_movimiento_rp)
    end
end
