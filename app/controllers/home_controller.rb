class HomeController < ApplicationController
  def index
    @usuario = current_user
  end
end
