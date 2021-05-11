class VacinacaosController < ApplicationController
  before_action :set_vacinacao, only: %i[ show edit update destroy ]
  before_action :check_logado

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
    @vacinacao.write_attribute(:usuario_id, @current_user.id)

    respond_to do |format|
      if @vacinacao.data > Date.today 
        if @vacinacao.save
          format.html { redirect_to @vacinacao, notice: "Agendamento de vacina marcado com sucesso!" }
          format.json { render :show, status: :created, location: @vacinacao }
        end
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
        format.html { redirect_to @vacinacao, notice: "Agendamento de vacina atualizada com sucesso!" }
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
      format.html { redirect_to vacinacaos_url, notice: "Agendamento de vacina apagada com sucesso!" }
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
