module SessionsHelper
  def sign_in(user)
    puts "*** sign_in called"
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
  end

  def current_user=(user)
    puts "*** current_user= called"
    @current_user = user
  end

  def current_user
    puts "*** current_user called"
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end

  def signed_in?
    puts "*** signed_in? called"
    !current_user.nil?
  end
end