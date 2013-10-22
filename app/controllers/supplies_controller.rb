class SuppliesController < ApplicationController

    def create
      @supply = Supply.create(name:params[:name], household_id:@current_household.id )
    end

end
