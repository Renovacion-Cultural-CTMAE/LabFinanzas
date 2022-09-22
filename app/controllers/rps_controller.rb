class RpsController < ApplicationController
  before_action :set_rp, only: %i[ show edit update destroy ]

  # GET /rps or /rps.json
  def index
    @rps = Rp.all
  end

  # GET /rps/1 or /rps/1.json
  def show
  end

  # GET /rps/new
  def new
    @rp = Rp.new
  end

  # GET /rps/1/edit
  def edit
  end

  # POST /rps or /rps.json
  def create
    @rp = Rp.new(rp_params)

    respond_to do |format|
      if @rp.save
        format.html { redirect_to rp_url(@rp), notice: "Rp was successfully created." }
        format.json { render :show, status: :created, location: @rp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rps/1 or /rps/1.json
  def update
    respond_to do |format|
      if @rp.update(rp_params)
        format.html { redirect_to rp_url(@rp), notice: "Rp was successfully updated." }
        format.json { render :show, status: :ok, location: @rp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rps/1 or /rps/1.json
  def destroy
    @rp.destroy

    respond_to do |format|
      format.html { redirect_to rps_url, notice: "Rp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rp
      @rp = Rp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rp_params
      params.require(:rp).permit(:numero_rp, :valor_rp, :concepto_rp, :valor_movimiento_rp, :tipo_movimiento_rp, :identificacion_rubro, :identificacion_rubro_interno, :numero_cdp)
    end
end
