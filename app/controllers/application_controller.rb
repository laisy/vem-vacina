class ApplicationController < ActionController::Base
  helper_method :current_user
  def current_user
      if session[:usuario_id]
          @current_user ||= User.find(session[:usuario_id])
      else
          @current_user = nil
      end
  end

  def check_logado
      @current_user = current_user
      if @current_user.nil? 
        redirect_to root_path  
      end
  end
  
end
