module SessionsHelper


  def sign_in(household)
    cookies.permanent[:remember_token] = household.remember_token
  end

  def sign_out
    cookies.delete(:remember_token)
  end

  def current_household
      @current_household ||=Household.find_by_remember_token(cookies[:remember_token])
  end

end