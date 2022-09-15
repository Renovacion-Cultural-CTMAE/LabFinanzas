class CdpsController < ApplicationController
  before_action :set_cdp, only: %i[ show edit update destroy ]

  # GET /cdps or /cdps.json
  def index
    @cdps = Cdp.all
  end

  # GET /cdps/1 or /cdps/1.json
  def show
  end

  # GET /cdps/new
  def new
    @cdp = Cdp.new
  end

  # GET /cdps/1/edit
  def edit
  end

  # POST /cdps or /cdps.json
  def create
    @cdp = Cdp.new(cdp_params)

    respond_to do |format|
      if @cdp.save
        format.html { redirect_to cdp_url(@cdp), notice: "Cdp was successfully created." }
        format.json { render :show, status: :created, location: @cdp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cdp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cdps/1 or /cdps/1.json
  def update
    respond_to do |format|
      if @cdp.update(cdp_params)
        format.html { redirect_to cdp_url(@cdp), notice: "Cdp was successfully updated." }
        format.json { render :show, status: :ok, location: @cdp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cdp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cdps/1 or /cdps/1.json
  def destroy
    @cdp.destroy

    respond_to do |format|
      format.html { redirect_to cdps_url, notice: "Cdp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cdp
      @cdp = Cdp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cdp_params
      params.require(:cdp).permit(:numero_de_cdp, :valor_del_cdp, :concepto_cdp, :valor_del_movimiento_cdp, :tipo_de_movimiento_cdp, :identificacion_del_rubro, :identificacion_del_rubro_interno)
    end
end
