class HomeController < ApplicationController


  def index
    @cadastrado = Cadastrado.new
  end

  def create

    @cadastrado = Cadastrado.new(params[:cadastrado])

    if @cadastrado.save
      flash[:success] = I18n.t :success
    else
      flash[:error] = I18n.t :error
    end
    redirect_to root_url

  end

end
