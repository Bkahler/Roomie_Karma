class MembersController < ApplicationController

  def show

  end

  def create
    if params[:name] && params[:email]
    @member= Member.create(name: params[:name], email:params[:email], household_id:@current_household.id)
    redirect_to household_path(@current_household.id)
     else
    flash[:errors] = "Roomie must have a Name and Email"
     redirect_to household_path(@current_household.id)
   end
  end

  def edit
      @member = Member.find(params[:id])

  end

  def update
    updated_member = Member.find(params[:id])
    updated_member.update_attributes(params[:member])
    redirect_to household_path(@current_household.id)
  end

 def destroy
      Member.delete(params[:id])
  end

end
