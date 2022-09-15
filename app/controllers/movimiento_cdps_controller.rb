class MovimientoCdpsController < ApplicationController
  before_action :set_movimiento_cdp, only: %i[ show edit update destroy ]

  # GET /movimiento_cdps or /movimiento_cdps.json
  def index
    @movimiento_cdps = MovimientoCdp.all
  end

  # GET /movimiento_cdps/1 or /movimiento_cdps/1.json
  def show
  end

  # GET /movimiento_cdps/new
  def new
    @movimiento_cdp = MovimientoCdp.new
  end

  # GET /movimiento_cdps/1/edit
  def edit
  end

  # POST /movimiento_cdps or /movimiento_cdps.json
  def create
    @movimiento_cdp = MovimientoCdp.new(movimiento_cdp_params)

    respond_to do |format|
      if @movimiento_cdp.save
        format.html { redirect_to movimiento_cdp_url(@movimiento_cdp), notice: "Movimiento cdp was successfully created." }
        format.json { render :show, status: :created, location: @movimiento_cdp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movimiento_cdp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movimiento_cdps/1 or /movimiento_cdps/1.json
  def update
    respond_to do |format|
      if @movimiento_cdp.update(movimiento_cdp_params)
        format.html { redirect_to movimiento_cdp_url(@movimiento_cdp), notice: "Movimiento cdp was successfully updated." }
        format.json { render :show, status: :ok, location: @movimiento_cdp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movimiento_cdp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movimiento_cdps/1 or /movimiento_cdps/1.json
  def destroy
    @movimiento_cdp.destroy

    respond_to do |format|
      format.html { redirect_to movimiento_cdps_url, notice: "Movimiento cdp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimiento_cdp
      @movimiento_cdp = MovimientoCdp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movimiento_cdp_params
      params.require(:movimiento_cdp).permit(:identificacion_del_rubro, :identificacion_del_rubro_interno, :numero_de_cdp, :concepto_de_movimiento_cdp, :valor_movimento_cdp, :saldo_cdp, :fecha_de_movimiento_del_cdp)
    end
end
