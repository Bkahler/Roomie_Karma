class SuppliesController < ApplicationController

    def show
    end

    def create
       @supply = Supply.create(name:params[:name], details:params[:details],household_id:@current_household.id)

      @member_supply = MembersSupply.create(supply_id:@supply.id , member_id: Member.find_by_id(Member.offset(rand(Member.count)).first).id )
      redirect_to household_path(@current_household.id)
    end

    def outstock
      @supply = Supply.find_by_id(params[:id])
      @supply.update_attributes(stocked: false)
      @member = @supply.members[0]

      UserMailer.supply_buy(@member,@supply).deliver
      redirect_to household_path(@current_household.id)
    end

    def instock
      @supply = Supply.find_by_id(params[:id])
      @member_supply = MembersSupply.find_by_id(@supply.id)
      @supply.update_attributes(stocked: true)
      @new_id = Member.find_by_id(Member.offset(rand(Member.count)).first).id
      @member_supply.update_attributes(member_id: @new_id)
      redirect_to household_path(@current_household.id)
    end

    def destroy
      Supply.delete(params[:id])
      redirect_to household_path(@current_household.id)
    end

end
