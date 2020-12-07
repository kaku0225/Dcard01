class RegistrationsController < ApplicationController
  before_action :session_sign_in, only:[:edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params_user)
    if @user.save
      redirect_to root_path, notice:'註冊成功'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if current_user.update(params_user)
      redirect_to root_path, notice:'更新成功'
    else
      render :edit
    end
  end



  private
  def params_user
    params.require(:user).permit(:email, :password, :password_confirmation, :nickname)
  end
end