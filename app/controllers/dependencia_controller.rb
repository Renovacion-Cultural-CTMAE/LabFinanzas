class DependenciaController < ApplicationController
  before_action :set_dependencium, only: %i[ show edit update destroy ]

  # GET /dependencia or /dependencia.json
  def index
    @dependencia = Dependencium.all
  end

  # GET /dependencia/1 or /dependencia/1.json
  def show
  end

  # GET /dependencia/new
  def new
    @dependencium = Dependencium.new
  end

  # GET /dependencia/1/edit
  def edit
  end

  # POST /dependencia or /dependencia.json
  def create
    @dependencium = Dependencium.new(dependencium_params)

    respond_to do |format|
      if @dependencium.save
        format.html { redirect_to dependencium_url(@dependencium), notice: "Dependencium was successfully created." }
        format.json { render :show, status: :created, location: @dependencium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dependencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dependencia/1 or /dependencia/1.json
  def update
    respond_to do |format|
      if @dependencium.update(dependencium_params)
        format.html { redirect_to dependencium_url(@dependencium), notice: "Dependencium was successfully updated." }
        format.json { render :show, status: :ok, location: @dependencium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dependencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dependencia/1 or /dependencia/1.json
  def destroy
    @dependencium.destroy

    respond_to do |format|
      format.html { redirect_to dependencia_url, notice: "Dependencium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dependencium
      @dependencium = Dependencium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dependencium_params
      params.require(:dependencium).permit(:codigo_dependencia, :nombre_dependencia, :identificacio_rubro, :identificacion_rubro_interno)
    end
end
