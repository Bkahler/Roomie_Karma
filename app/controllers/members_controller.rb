class MembersController < ApplicationController

  def create
    if params[:name] && params[:email]
    @member= Member.create(name: params[:name], email:params[:email], household_id:@current_household.id)
    redirect_to household_path(@current_household.id)
     else
    flash[:errors] = "Roomie must have a Name and Email"
     redirect_to household_path(@current_household.id)
   end
  end


def member_chores
  @current_household.members.each do |x|
     x.name

end
