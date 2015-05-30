class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      AdminMailer.new_user_registered(@user).deliver_now
      flash[:success] = "Dados enviados com sucesso! Sua conta será verificada e ativada em até 48 horas."
    else
      flash[:error] = "Houve um erro com o seu cadastro. Verifique sua conexão e tente novamente."
    end
  end

  def index
    @users = User.reorder("active ASC").order(:name).page(params[:page])
  end

  private

    def user_params
      params.require(:user).permit(:name, :crm, :email, :password,
                                   :password_confirmation)
    end
  
end
