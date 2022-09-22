class MovementItemsController < ApplicationController
  before_action :set_movement_item, only: %i[ show edit update destroy ]

  # GET /movement_items or /movement_items.json
  def index
    @movement_items = MovementItem.all
  end

  # GET /movement_items/1 or /movement_items/1.json
  def show
  end

  # GET /movement_items/new
  def new
    @movement_item = MovementItem.new
  end

  # GET /movement_items/1/edit
  def edit
  end

  # POST /movement_items or /movement_items.json
  def create
    @movement_item = MovementItem.new(movement_item_params)

    respond_to do |format|
      if @movement_item.save
        format.html { redirect_to movement_item_url(@movement_item), notice: "Movement item was successfully created." }
        format.json { render :show, status: :created, location: @movement_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movement_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movement_items/1 or /movement_items/1.json
  def update
    respond_to do |format|
      if @movement_item.update(movement_item_params)
        format.html { redirect_to movement_item_url(@movement_item), notice: "Movement item was successfully updated." }
        format.json { render :show, status: :ok, location: @movement_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movement_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movement_items/1 or /movement_items/1.json
  def destroy
    @movement_item.destroy

    respond_to do |format|
      format.html { redirect_to movement_items_url, notice: "Movement item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movement_item
      @movement_item = MovementItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movement_item_params
      params.require(:movement_item).permit(:identificacion_rubro, :identificacion_rubro_interno, :presupuesto_inicial, :codigo_dependencia, :valor_movimiento, :tipo_movimiento, :codigo_resolucion, :fecha_resolucion, :observacion_resolucion)
    end
end
