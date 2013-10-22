class ChoresController < ApplicationController

        def create
              if params[:name]
              @chore = Chore.create(name:params[:name], frequency:params[:frequency], household_id:@current_household.id)
              redirect_to household_path(@current_household.id)
            else
              flash[:errors] = "Chore must have a Name and Frequency"
              redirect_to household_path(@current_household.id)
            end
        end

end
