class SessionsController < ApplicationController
  def new
  end
  def create
    usuario = Usuario.find_by_cpf(params[:cpf])
    if usuario.autenticar(params[:senha])
      session[:usuario_id] = usuario.id
      redirect_to root_url, notice: "Logado!"
    else
      flash.now[:alert] = "CPF ou senha é inválida"
      render "new"
    end
  end
  def destroy
    session[:usuario_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end