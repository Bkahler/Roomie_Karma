class SuppliesController < ApplicationController

  def show
  end

  def create
    Supply.new.create_supply(params[:name], params[:details], @current_household.id)
    redirect_to household_path(@current_household.id)
  end

  def outstock
    Supply.supply_outstock(params)
    redirect_to household_path(@current_household.id)
  end

  def instock
    Supply.supply_instock(params)
    redirect_to household_path(@current_household.id)
  end

  def destroy
    Supply.delete(params[:id])
    redirect_to household_path(@current_household.id)
  end

end
