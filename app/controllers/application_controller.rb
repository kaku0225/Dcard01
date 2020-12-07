class ApplicationController < ActionController::Base
  include SessionsHelper

  private
  def session_sign_in
    redirect_to sign_in_users_path, notice:'請先登入會員' if not user_signed_in?
  end
end
