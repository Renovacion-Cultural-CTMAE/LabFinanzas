class CdpMovementsController < ApplicationController
  before_action :set_cdp_movement, only: %i[ show edit update destroy ]

  # GET /cdp_movements or /cdp_movements.json
  def index
    @cdp_movements = CdpMovement.all
  end

  # GET /cdp_movements/1 or /cdp_movements/1.json
  def show
  end

  # GET /cdp_movements/new
  def new
    @cdp_movement = CdpMovement.new
  end

  # GET /cdp_movements/1/edit
  def edit
  end

  # POST /cdp_movements or /cdp_movements.json
  def create
    @cdp_movement = CdpMovement.new(cdp_movement_params)

    respond_to do |format|
      if @cdp_movement.save
        format.html { redirect_to cdp_movement_url(@cdp_movement), notice: "Cdp movement was successfully created." }
        format.json { render :show, status: :created, location: @cdp_movement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cdp_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cdp_movements/1 or /cdp_movements/1.json
  def update
    respond_to do |format|
      if @cdp_movement.update(cdp_movement_params)
        format.html { redirect_to cdp_movement_url(@cdp_movement), notice: "Cdp movement was successfully updated." }
        format.json { render :show, status: :ok, location: @cdp_movement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cdp_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cdp_movements/1 or /cdp_movements/1.json
  def destroy
    @cdp_movement.destroy

    respond_to do |format|
      format.html { redirect_to cdp_movements_url, notice: "Cdp movement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cdp_movement
      @cdp_movement = CdpMovement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cdp_movement_params
      params.require(:cdp_movement).permit(:identificacion_rubro, :identificacion_rubro_interno, :numero_cdp, :concepto_movimiento_cdp, :valor_movimiento_cdp, :saldo_cdp, :fecha_movimiento_cdp)
    end
end
