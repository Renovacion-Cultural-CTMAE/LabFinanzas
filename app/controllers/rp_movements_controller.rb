class RpMovementsController < ApplicationController
  before_action :set_rp_movement, only: %i[ show edit update destroy ]

  # GET /rp_movements or /rp_movements.json
  def index
    @rp_movements = RpMovement.all
  end

  # GET /rp_movements/1 or /rp_movements/1.json
  def show
  end

  # GET /rp_movements/new
  def new
    @rp_movement = RpMovement.new
  end

  # GET /rp_movements/1/edit
  def edit
  end

  # POST /rp_movements or /rp_movements.json
  def create
    @rp_movement = RpMovement.new(rp_movement_params)

    respond_to do |format|
      if @rp_movement.save
        format.html { redirect_to rp_movement_url(@rp_movement), notice: "Rp movement was successfully created." }
        format.json { render :show, status: :created, location: @rp_movement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rp_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rp_movements/1 or /rp_movements/1.json
  def update
    respond_to do |format|
      if @rp_movement.update(rp_movement_params)
        format.html { redirect_to rp_movement_url(@rp_movement), notice: "Rp movement was successfully updated." }
        format.json { render :show, status: :ok, location: @rp_movement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rp_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rp_movements/1 or /rp_movements/1.json
  def destroy
    @rp_movement.destroy

    respond_to do |format|
      format.html { redirect_to rp_movements_url, notice: "Rp movement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rp_movement
      @rp_movement = RpMovement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rp_movement_params
      params.require(:rp_movement).permit(:identificacion_rubro, :identificacion_rubro_interno, :numero_rp, :concepto_movimiento_cdp, :valor_movimiento_rp, :saldo_rp, :fecha_movimiento_rp)
    end
end
