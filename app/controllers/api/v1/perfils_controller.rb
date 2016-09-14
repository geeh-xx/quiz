class Api::V1::PerfilsController < ApplicationController
  before_action :autheticate_user!

  def index
    if current_user.perfil.nil?
      render nothing: true, status: 400
    else
      perfil = current_user.perfil
      render json: perfil, status: 200
    end
  end

  def create
    perfil = Perfil.new(perfil_params)

    if perfil.save
      render json: perfil, status: 201 ,location: perfil
    else
      render json: perfil.errors, status: 422
    end
  end

  def destroy
    perfil = Perfil.find(params[:id])
    perfil.destroy
    render nothing: true, status: 204
  end


  private
    def perfil_params
      params_require(:perfil).permit :name, :birth, :cpf, :user_id
    end

end
