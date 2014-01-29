class SessionsController < ApplicationController

  skip_before_filter :authorize, only: [:new, :create]

  def new
  end

  def create
    household = Household.find_by_username(params[:username])

    if household && household.authenticate(params[:password])
      sign_in(household)
      redirect_to household_path(household.id)
    else
      flash[:errors] = "invalid Household Name or Password"
      render :new
    end
  end

  def destroy
    sign_out
    edirect_to households_path
  end
end
