class SuppliesController < ApplicationController

    def create
      @supply = Supply.create(name:params[:name], household_id:@current_household.id )
      redirect_to household_path(@current_household.id)
    end

    def outstock

    end

end
