class VacinacaosController < ApplicationController
  before_action :set_vacinacao, only: %i[ show edit update destroy ]

  # GET /vacinacaos or /vacinacaos.json
  def index
    @vacinacaos = Vacinacao.all
  end

  # GET /vacinacaos/1 or /vacinacaos/1.json
  def show
  end

  # GET /vacinacaos/new
  def new
    @vacinacao = Vacinacao.new
  end

  # GET /vacinacaos/1/edit
  def edit
  end

  # POST /vacinacaos or /vacinacaos.json
  def create
    @vacinacao = Vacinacao.new(vacinacao_params)

    respond_to do |format|
      if @vacinacao.save
        format.html { redirect_to @vacinacao, notice: "Vacinacao was successfully created." }
        format.json { render :show, status: :created, location: @vacinacao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vacinacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vacinacaos/1 or /vacinacaos/1.json
  def update
    respond_to do |format|
      if @vacinacao.update(vacinacao_params)
        format.html { redirect_to @vacinacao, notice: "Vacinacao was successfully updated." }
        format.json { render :show, status: :ok, location: @vacinacao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vacinacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vacinacaos/1 or /vacinacaos/1.json
  def destroy
    @vacinacao.destroy
    respond_to do |format|
      format.html { redirect_to vacinacaos_url, notice: "Vacinacao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vacinacao
      @vacinacao = Vacinacao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vacinacao_params
      params.require(:vacinacao).permit(:nome_vacina, :descricao_localizacao, :data, :horario)
    end
end
