class DependencesController < ApplicationController
  before_action :set_dependence, only: %i[ show edit update destroy ]

  # GET /dependences or /dependences.json
  def index
    @dependences = Dependence.all
  end

  # GET /dependences/1 or /dependences/1.json
  def show
  end

  # GET /dependences/new
  def new
    @dependence = Dependence.new
  end

  # GET /dependences/1/edit
  def edit
  end

  # POST /dependences or /dependences.json
  def create
    @dependence = Dependence.new(dependence_params)

    respond_to do |format|
      if @dependence.save
        format.html { redirect_to dependence_url(@dependence), notice: "Dependence was successfully created." }
        format.json { render :show, status: :created, location: @dependence }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dependence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dependences/1 or /dependences/1.json
  def update
    respond_to do |format|
      if @dependence.update(dependence_params)
        format.html { redirect_to dependence_url(@dependence), notice: "Dependence was successfully updated." }
        format.json { render :show, status: :ok, location: @dependence }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dependence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dependences/1 or /dependences/1.json
  def destroy
    @dependence.destroy

    respond_to do |format|
      format.html { redirect_to dependences_url, notice: "Dependence was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dependence
      @dependence = Dependence.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dependence_params
      params.require(:dependence).permit(:codigo_dependencia, :nombre_dependencia, :identificacion_rubro, :identificacion_rubro_interno)
    end
end
