class SuppliesController < ApplicationController

    def show
    end

    def create
      @supply = Supply.create(name:params[:name], details:params[:details],household_id:@current_household.id)
      @member_supply = MembersSupply.create(supply_id:@supply.id , member_id: Member.find_by_id(Member.offset(rand(Member.count)).first).id )
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
