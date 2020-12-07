module SessionsHelper
  def current_user
    if session[:user1111].present?
      @_user1111 ||= User.find_by(id: session[:user1111])
    else
      nil
    end
  end


  def user_signed_in?
    if current_user
      return true
    else
      return false
    end
  end
end