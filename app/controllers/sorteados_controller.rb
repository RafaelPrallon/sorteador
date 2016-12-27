class SorteadosController < ApplicationController
  before_action :set_sorteado, only: [:show, :edit, :update, :destroy]

  # GET /sorteados
  # GET /sorteados.json
  def index
    @sorteados = Sorteado.all
  end

  # GET /sorteados/1
  # GET /sorteados/1.json
  def show
  end

  # GET /sorteados/new
  def new
    @sorteado = Sorteado.new
  end

  # GET /sorteados/1/edit
  def edit
  end

  # POST /sorteados
  # POST /sorteados.json
  def create
    @sorteado = Sorteado.new(sorteado_params)

    respond_to do |format|
      if @sorteado.save
        format.html { redirect_to @sorteado, notice: 'Sorteado was successfully created.' }
        format.json { render :show, status: :created, location: @sorteado }
      else
        format.html { render :new }
        format.json { render json: @sorteado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sorteados/1
  # PATCH/PUT /sorteados/1.json
  def update
    respond_to do |format|
      if @sorteado.update(sorteado_params)
        format.html { redirect_to @sorteado, notice: 'Sorteado was successfully updated.' }
        format.json { render :show, status: :ok, location: @sorteado }
      else
        format.html { render :edit }
        format.json { render json: @sorteado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sorteados/1
  # DELETE /sorteados/1.json
  def destroy
    @sorteado.destroy
    respond_to do |format|
      format.html { redirect_to sorteados_url, notice: 'Sorteado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sorteado
      @sorteado = Sorteado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sorteado_params
      params.require(:sorteado).permit(:name)
    end
end
