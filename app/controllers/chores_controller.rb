class ChoresController < ApplicationController

  def show
  end

  def create
    if params[:name]
      @chore = Chore.create(name:params[:name].downcase, frequency:params[:frequency], household_id:@current_household.id)
      redirect_to household_path(@current_household.id)
    else
      flash[:errors] = "Chore must have a Name and Frequency"
      redirect_to household_path(@current_household.id)
    end
  end

  def edit
    @chore =Chore.find(params[:id])
  end

  def update
    updated_chore = Chore.find(params[:id])
    updated_chore.update_attributes(params[:member])
    redirect_to household_path(@current_household.id)
  end

  def destroy
    Chore.delete(params[:id])
    redirect_to household_path(@current_household.id)
  end

end
